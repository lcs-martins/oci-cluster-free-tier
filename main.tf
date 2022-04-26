# TODO:
# defined freeform_tags and defined_tags for all resources modules

# modules call

module "new_compartment" {
  source                  = "./modules/compartments/"
  root_compartment_ocid   = var.root_compartment_ocid
  compartment_name        = var.compartment_name
  compartment_description = var.compartment_description
}

module "new_vcn" {
  depends_on                     = [module.new_compartment.id]
  source                         = "./modules/vcn/"
  compartment_ocid               = module.new_compartment.id != "" ? module.new_compartment.id : var.root_compartment_ocid
  vcn_cidr_block                 = var.vcn_cidr_block
  vcn_display_name               = var.vcn_display_name
  vcn_dns_label                  = var.vcn_dns_label
  sbnet_cidr_block               = var.sbnet_cidr_block
  sbnet_display_name             = var.sbnet_display_name
  sbnet_dns_label                = var.sbnet_dns_label
  ig_display_name                = var.ig_display_name
  rt_display_name                = var.rt_display_name
  rt_cidr_block_destination      = var.rt_cidr_block_destination
  rt_cidr_block_destination_type = var.rt_cidr_block_destination_type
  sl_display_name                = var.sl_display_name
  egress_security_rules          = var.egress_security_rules
  ingress_security_rules         = var.ingress_security_rules
}

module "new_instances" {
  depends_on                          = [module.new_vcn.subnet_id]
  source                              = "./modules/instances/"
  compartment_ocid                    = module.new_compartment.id != "" ? module.new_compartment.id : var.root_compartment_ocid
  tenancy_ocid                        = var.tenancy_ocid
  instance_shape                      = var.instance_shape
  instance_ocpus                      = var.instance_ocpus
  instance_shape_config_memory_in_gbs = var.instance_shape_config_memory_in_gbs
  ssh_public_key                      = var.ssh_public_key
  subnet_id                           = module.new_vcn.subnet_id != "" ? module.new_vcn.subnet_id : var.subnet_ocid
}