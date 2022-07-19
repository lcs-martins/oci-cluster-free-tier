resource "oci_objectstorage_object" "object_upload" {
    #Required
    bucket = var.bucket_name
    source = var.path_to_file
    namespace = data.oci_objectstorage_namespace.namespace.name
    # object = var.object_object
}