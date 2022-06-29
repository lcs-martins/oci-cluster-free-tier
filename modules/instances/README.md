<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_oci"></a> [oci](#provider\_oci) | n/a |
| <a name="provider_tls"></a> [tls](#provider\_tls) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [oci_core_instance.intance](https://registry.terraform.io/providers/hashicorp/oci/latest/docs/resources/core_instance) | resource |
| [tls_private_key.compute_ssh_key](https://registry.terraform.io/providers/hashicorp/tls/latest/docs/resources/private_key) | resource |
| [oci_core_images.test_images](https://registry.terraform.io/providers/hashicorp/oci/latest/docs/data-sources/core_images) | data source |
| [oci_identity_availability_domain.ad](https://registry.terraform.io/providers/hashicorp/oci/latest/docs/data-sources/identity_availability_domain) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_compartment_ocid"></a> [compartment\_ocid](#input\_compartment\_ocid) | # provider Compartment OICD | `string` | n/a | yes |
| <a name="input_instance_ocpus"></a> [instance\_ocpus](#input\_instance\_ocpus) | default = 1 free tier ocpus: 4 núcleos Ampere A1 based on Arm or 2 AMD based Compute VMs with 1/8 OCPU | `number` | `1` | no |
| <a name="input_instance_shape"></a> [instance\_shape](#input\_instance\_shape) | More about shapes < https://docs.oracle.com/en-us/iaas/Content/Compute/References/computeshapes.htm > | `string` | `"VM.Standard.A1.Flex"` | no |
| <a name="input_instance_shape_config_memory_in_gbs"></a> [instance\_shape\_config\_memory\_in\_gbs](#input\_instance\_shape\_config\_memory\_in\_gbs) | default = 6 free tier ocpus: 24 GB, can be used in 4 VMs with 6 GB | `number` | `6` | no |
| <a name="input_ssh_public_key"></a> [ssh\_public\_key](#input\_ssh\_public\_key) | Path or inline pub ssh key | `string` | `""` | no |
| <a name="input_subnet_id"></a> [subnet\_id](#input\_subnet\_id) | n/a | `string` | n/a | yes |
| <a name="input_tenancy_ocid"></a> [tenancy\_ocid](#input\_tenancy\_ocid) | Tenancy id | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_data_image"></a> [data\_image](#output\_data\_image) | Ubuntu Version image |
| <a name="output_ssh_key_authorized"></a> [ssh\_key\_authorized](#output\_ssh\_key\_authorized) | n/a |
<!-- END_TF_DOCS -->