# outputs blocks
output "id" {
  value       = *.*.id
  description = "Compartment OCID"
  depends_on  = []
}