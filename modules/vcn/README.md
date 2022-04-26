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
| [oci_core_internet_gateway.internet_gateway](https://registry.terraform.io/providers/hashicorp/oci/latest/docs/resources/core_internet_gateway) | resource |
| [oci_core_route_table.route_table](https://registry.terraform.io/providers/hashicorp/oci/latest/docs/resources/core_route_table) | resource |
| [oci_core_security_list.security_list](https://registry.terraform.io/providers/hashicorp/oci/latest/docs/resources/core_security_list) | resource |
| [oci_core_subnet.subnet](https://registry.terraform.io/providers/hashicorp/oci/latest/docs/resources/core_subnet) | resource |
| [oci_core_vcn.vcn](https://registry.terraform.io/providers/hashicorp/oci/latest/docs/resources/core_vcn) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_compartment_ocid"></a> [compartment\_ocid](#input\_compartment\_ocid) | # provider Root compartment OICD | `string` | n/a | yes |
| <a name="input_egress_security_rules"></a> [egress\_security\_rules](#input\_egress\_security\_rules) | Security List egress security rules | `map(any)` | <pre>{<br>  "default": {<br>    "destination": "0.0.0.0/0",<br>    "protocol": "6"<br>  }<br>}</pre> | no |
| <a name="input_ig_display_name"></a> [ig\_display\_name](#input\_ig\_display\_name) | Internet Gateway display name | `string` | `"clusterIG"` | no |
| <a name="input_ingress_security_rules"></a> [ingress\_security\_rules](#input\_ingress\_security\_rules) | Security List ingress security rules | `map(any)` | n/a | yes |
| <a name="input_rt_cidr_block_destination"></a> [rt\_cidr\_block\_destination](#input\_rt\_cidr\_block\_destination) | Route Table cidr block destination | `string` | `"0.0.0.0/0"` | no |
| <a name="input_rt_cidr_block_destination_type"></a> [rt\_cidr\_block\_destination\_type](#input\_rt\_cidr\_block\_destination\_type) | Route Table cidr block destination type | `string` | `"CIDR_BLOCK"` | no |
| <a name="input_rt_display_name"></a> [rt\_display\_name](#input\_rt\_display\_name) | Route Table display name | `string` | `"clusterRouteTable"` | no |
| <a name="input_sbnet_cidr_block"></a> [sbnet\_cidr\_block](#input\_sbnet\_cidr\_block) | Subnet cidr block | `string` | `"10.1.20.0/24"` | no |
| <a name="input_sbnet_display_name"></a> [sbnet\_display\_name](#input\_sbnet\_display\_name) | Subnet display name | `string` | `"clusterSubnet"` | no |
| <a name="input_sbnet_dns_label"></a> [sbnet\_dns\_label](#input\_sbnet\_dns\_label) | n/a | `string` | `"clustersubnet"` | no |
| <a name="input_sl_display_name"></a> [sl\_display\_name](#input\_sl\_display\_name) | Security List | `string` | `"clusterSecurityList"` | no |
| <a name="input_vcn_cidr_block"></a> [vcn\_cidr\_block](#input\_vcn\_cidr\_block) | VCN cidr block | `string` | `"10.1.0.0/16"` | no |
| <a name="input_vcn_display_name"></a> [vcn\_display\_name](#input\_vcn\_display\_name) | VCN display name label | `string` | `"clusterVCN"` | no |
| <a name="input_vcn_dns_label"></a> [vcn\_dns\_label](#input\_vcn\_dns\_label) | VCN dns label | `string` | `"clustervcn"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_subnet_id"></a> [subnet\_id](#output\_subnet\_id) | Compartment OCID |
| <a name="output_vcn_id"></a> [vcn\_id](#output\_vcn\_id) | Compartment OCID |
<!-- END_TF_DOCS -->