<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_kubernetes_cluster_node_pool.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/kubernetes_cluster_node_pool) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_enable_auto_scaling"></a> [enable\_auto\_scaling](#input\_enable\_auto\_scaling) | n/a | `bool` | `false` | no |
| <a name="input_kubernetes_cluster_id"></a> [kubernetes\_cluster\_id](#input\_kubernetes\_cluster\_id) | n/a | `string` | n/a | yes |
| <a name="input_max_count"></a> [max\_count](#input\_max\_count) | n/a | `number` | `3` | no |
| <a name="input_max_pods"></a> [max\_pods](#input\_max\_pods) | n/a | `number` | `110` | no |
| <a name="input_min_count"></a> [min\_count](#input\_min\_count) | n/a | `number` | `1` | no |
| <a name="input_mode"></a> [mode](#input\_mode) | n/a | `string` | `"User"` | no |
| <a name="input_name"></a> [name](#input\_name) | n/a | `string` | n/a | yes |
| <a name="input_node_count"></a> [node\_count](#input\_node\_count) | n/a | `number` | n/a | yes |
| <a name="input_os_type"></a> [os\_type](#input\_os\_type) | n/a | `string` | `"Linux"` | no |
| <a name="input_subnet_id"></a> [subnet\_id](#input\_subnet\_id) | n/a | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | n/a | `map(string)` | `{}` | no |
| <a name="input_vm_size"></a> [vm\_size](#input\_vm\_size) | n/a | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | n/a |
| <a name="output_name"></a> [name](#output\_name) | n/a |
<!-- END_TF_DOCS -->