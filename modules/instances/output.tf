# outputs blocks
output "data_image" {
  value       = data.oci_core_images.test_images.images[0]
  description = "Ubuntu Version image"
  depends_on  = []
}
output "ssh_key_authorized" {
  value       = oci_core_instance.intance[*].metadata
}