resource "oci_objectstorage_bucket" "bucket" {
    compartment_id = var.compartment_ocid
    name = var.bucket_name
    namespace = data.oci_objectstorage_namespace.namespace.name
    access_type = var.bucket_access_type
}