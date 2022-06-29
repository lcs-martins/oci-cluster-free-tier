resource "oci_core_instance" "intance" {
  count = var.count_instances
  availability_domain = data.oci_identity_availability_domain.ad.name
  compartment_id      = var.compartment_ocid
  display_name        = "node-${count.index}"
  shape               = var.instance_shape

  shape_config {
    ocpus         = var.instance_ocpus
    memory_in_gbs = var.instance_shape_config_memory_in_gbs
  }

  create_vnic_details {
    subnet_id        = var.subnet_id
    display_name     = "primaryvnic"
    assign_public_ip = false
    hostname_label   = "node-${count.index}"
  }

  source_details {
    source_type = "image"
    # source_id   = "ocid1.image.oc1.iad.aaaaaaaamc2xy64p4r4tcwjy26ksdkehrdrzjcacw4upaq7fnqict55as4kq" # lookup(data.oci_core_images.test_images.images[0], "id")
    source_id = lookup(data.oci_core_images.test_images.images[0], "id")
  }

  metadata = {
    ssh_authorized_keys = (var.ssh_public_key != "") ? file(var.ssh_public_key) : tls_private_key.compute_ssh_key.public_key_openssh
  }
}
# RSA key of size 4096 bits
resource "tls_private_key" "compute_ssh_key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}