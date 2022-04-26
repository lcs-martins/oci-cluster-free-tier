<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_oci"></a> [oci](#provider\_oci) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [oci_identity_compartment.compartment](https://registry.terraform.io/providers/hashicorp/oci/latest/docs/resources/identity_compartment) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_compartment_description"></a> [compartment\_description](#input\_compartment\_description) | Compartment description | `string` | `"instances cluster compartment"` | no |
| <a name="input_compartment_name"></a> [compartment\_name](#input\_compartment\_name) | Compartment name | `string` | `"instances-cluster"` | no |
| <a name="input_root_compartment_ocid"></a> [root\_compartment\_ocid](#input\_root\_compartment\_ocid) | # provider Root compartment OICD | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | Compartment OCID |
<!-- END_TF_DOCS -->