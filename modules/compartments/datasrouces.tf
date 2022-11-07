data "oci_identity_availability_domains" "availability_domains" {
    #Required
    compartment_id = oci_identity_compartment.compartment.compartment_id
}