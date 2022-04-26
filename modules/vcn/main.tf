# NETWORK

# VNC
resource "oci_core_vcn" "vcn" {
  compartment_id = var.compartment_ocid
  cidr_block     = var.vcn_cidr_block
  display_name   = var.vcn_display_name
  dns_label      = var.vcn_dns_label
}

# Subnet
resource "oci_core_subnet" "subnet" {
  cidr_block        = var.sbnet_cidr_block
  display_name      = var.sbnet_display_name
  dns_label         = var.sbnet_dns_label
  security_list_ids = [oci_core_security_list.security_list.id]
  compartment_id    = var.compartment_ocid
  vcn_id            = oci_core_vcn.vcn.id
  route_table_id    = oci_core_route_table.route_table.id
  dhcp_options_id   = oci_core_vcn.vcn.default_dhcp_options_id
}

# Internet Gateway
resource "oci_core_internet_gateway" "internet_gateway" {
  compartment_id = var.compartment_ocid
  display_name   = var.ig_display_name
  vcn_id         = oci_core_vcn.vcn.id
}

# Route Table
resource "oci_core_route_table" "route_table" {
  compartment_id = var.compartment_ocid
  vcn_id         = oci_core_vcn.vcn.id
  display_name   = var.rt_display_name #"testRouteTable"

  route_rules {
    destination       = var.rt_cidr_block_destination      #"0.0.0.0/0"
    destination_type  = var.rt_cidr_block_destination_type # "CIDR_BLOCK"
    network_entity_id = oci_core_internet_gateway.internet_gateway.id
  }
}

# Security List
resource "oci_core_security_list" "security_list" {
  compartment_id = var.compartment_ocid
  vcn_id         = oci_core_vcn.vcn.id
  display_name   = var.sl_display_name # "testSecurityList"


  dynamic "egress_security_rules" {
    for_each = var.egress_security_rules
    content {
      protocol    = egress_security_rules.value["protocol"]
      destination = egress_security_rules.value["destination"]
    }
  }
  # egress_security_rules {
  #   protocol    = "6"
  #   destination = "0.0.0.0/0"
  # }

  dynamic "ingress_security_rules" {
    for_each = var.ingress_security_rules
    content {
      protocol = ingress_security_rules.value["protocol"]
      source   = ingress_security_rules.value["source"]

      tcp_options {
        max = ingress_security_rules.value["tcp_options"]["max"]
        min = ingress_security_rules.value["tcp_options"]["min"]
      }
    }
  }

  #ingress_security_rules {
  #  protocol = "6"
  #  source   = "0.0.0.0/0"
  #
  #  tcp_options {
  #    max = "22"
  #    min = "22"
  #  }
  #}

}