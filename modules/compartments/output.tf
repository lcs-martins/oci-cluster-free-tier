# outputs blocks
output "id" {
  value       = oci_identity_compartment.compartment.id
  description = "Compartment OCID"
  depends_on  = []
}

output "availability_domains" {
  value       = data.oci_identity_availability_domains.availability_domains.availability_domains
  description = "Availability domains in compartment"
  depends_on  = []
}