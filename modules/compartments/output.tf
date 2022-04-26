# outputs blocks
output "id" {
  value       = oci_identity_compartment.compartment.id
  description = "Compartment OCID"
  depends_on  = []
}