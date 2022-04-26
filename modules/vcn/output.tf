# outputs blocks

output "vcn_id" {
  value       = oci_core_vcn.vcn.id
  description = "Compartment OCID"
  depends_on  = []
}

output "subnet_id" {
  value       = oci_core_subnet.subnet.id
  description = "Compartment OCID"
  depends_on  = []
}