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
| <a name="input_kubernetes_cluster_id"></a> [kubernetes_cluster_id](#input_kubernetes_cluster_id) | n/a | `string` | n/a |
| <a name="input_name"></a> [name](#input_name) | n/a | `string` | n/a |
| <a name="input_node_count"></a> [node_count](#input_node_count) | n/a | `number` | n/a |
| <a name="input_subnet_id"></a> [subnet_id](#input_subnet_id) | n/a | `string` | n/a |
| <a name="input_vm_size"></a> [vm_size](#input_vm_size) | n/a | `string` | n/a |
| <a name="input_enable_auto_scaling"></a> [enable_auto_scaling](#input_enable_auto_scaling) | n/a | `bool` | `false` |
| <a name="input_max_count"></a> [max_count](#input_max_count) | n/a | `number` | `3` |
| <a name="input_max_pods"></a> [max_pods](#input_max_pods) | n/a | `number` | `110` |
| <a name="input_min_count"></a> [min_count](#input_min_count) | n/a | `number` | `1` |
| <a name="input_mode"></a> [mode](#input_mode) | n/a | `string` | `"User"` |
| <a name="input_os_type"></a> [os_type](#input_os_type) | n/a | `string` | `"Linux"` |
| <a name="input_tags"></a> [tags](#input_tags) | n/a | `map(string)` | `{}` |

#### Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output_id) | n/a |
| <a name="output_name"></a> [name](#output_name) | n/a |
<!-- END_TF_DOCS -->