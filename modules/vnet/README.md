<!-- BEGIN_TF_DOCS -->
#### Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider_azurerm) | n/a |

#### Modules

No modules.

#### Resources

| Name | Type |
|------|------|

#### Inputs

| Name | Description | Type | Default |
|------|-------------|------|---------|
| <a name="input_address_space"></a> [address_space](#input_address_space) | n/a | `list(string)` | n/a |
| <a name="input_location"></a> [location](#input_location) | n/a | `string` | n/a |
| <a name="input_name"></a> [name](#input_name) | n/a | `string` | n/a |
| <a name="input_resource_group_name"></a> [resource_group_name](#input_resource_group_name) | n/a | `string` | n/a |
| <a name="input_subnets"></a> [subnets](#input_subnets) | n/a | <pre>map(object({<br>    address_prefixes = list(string)<br>  }))</pre> | n/a |
| <a name="input_tags"></a> [tags](#input_tags) | n/a | `map(string)` | `{}` |

#### Outputs

| Name | Description |
|------|-------------|
| <a name="output_subnet_ids"></a> [subnet_ids](#output_subnet_ids) | n/a |
| <a name="output_vnet_id"></a> [vnet_id](#output_vnet_id) | n/a |
<!-- END_TF_DOCS -->