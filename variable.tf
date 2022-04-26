## provider 

variable "tenancy_ocid" {}
variable "user_ocid" {}
variable "fingerprint" {}
variable "private_key_path" {}
variable "region" {}
variable "root_compartment_ocid" {}

## Compartments

variable "compartment_name" {}
variable "compartment_description" {}

## VCN
variable "subnet_ocid" {}
variable "vcn_cidr_block" {}
variable "vcn_display_name" {}
variable "vcn_dns_label" {}
variable "sbnet_cidr_block" {}
variable "sbnet_display_name" {}
variable "sbnet_dns_label" {}
variable "ig_display_name" {}
variable "rt_display_name" {}
variable "rt_cidr_block_destination" {}
variable "rt_cidr_block_destination_type" {}
variable "sl_display_name" {}
variable "egress_security_rules" {}
variable "ingress_security_rules" {}

## VM

variable "instance_shape" {}
variable "instance_ocpus" {}
variable "instance_shape_config_memory_in_gbs" {}
variable "ssh_public_key" {}