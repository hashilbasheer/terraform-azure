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
| <a name="input_dns_prefix"></a> [dns_prefix](#input_dns_prefix) | n/a | `string` | n/a |
| <a name="input_location"></a> [location](#input_location) | n/a | `string` | n/a |
| <a name="input_name"></a> [name](#input_name) | n/a | `string` | n/a |
| <a name="input_resource_group_name"></a> [resource_group_name](#input_resource_group_name) | n/a | `string` | n/a |
| <a name="input_system_node_pool"></a> [system_node_pool](#input_system_node_pool) | n/a | <pre>object({<br>    name                = string<br>    vm_size             = string<br>    node_count          = number<br>    subnet_id           = string<br>    max_pods            = number<br>    enable_auto_scaling = bool<br>    min_count           = number<br>    max_count           = number<br>  })</pre> | n/a |
| <a name="input_kubernetes_version"></a> [kubernetes_version](#input_kubernetes_version) | n/a | `string` | `null` |
| <a name="input_local_account_disabled"></a> [local_account_disabled](#input_local_account_disabled) | n/a | `bool` | `false` |
| <a name="input_network_profile"></a> [network_profile](#input_network_profile) | n/a | <pre>object({<br>    network_plugin     = string<br>    network_policy     = string<br>    service_cidr       = string<br>    dns_service_ip     = string<br>    load_balancer_sku  = string<br>    outbound_type      = string<br>  })</pre> | <pre>{<br>  "dns_service_ip": "10.0.0.10",<br>  "load_balancer_sku": "standard",<br>  "network_plugin": "azure",<br>  "network_policy": "azure",<br>  "outbound_type": "loadBalancer",<br>  "service_cidr": "10.0.0.0/16"<br>}</pre> |
| <a name="input_private_cluster_enabled"></a> [private_cluster_enabled](#input_private_cluster_enabled) | n/a | `bool` | `true` |
| <a name="input_role_based_access_control_enabled"></a> [role_based_access_control_enabled](#input_role_based_access_control_enabled) | n/a | `bool` | `true` |
| <a name="input_sku_tier"></a> [sku_tier](#input_sku_tier) | n/a | `string` | `"Free"` |
| <a name="input_tags"></a> [tags](#input_tags) | n/a | `map(string)` | `{}` |

#### Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output_id) | n/a |
| <a name="output_kube_config_raw"></a> [kube_config_raw](#output_kube_config_raw) | n/a |
| <a name="output_name"></a> [name](#output_name) | n/a |
| <a name="output_node_resource_group"></a> [node_resource_group](#output_node_resource_group) | n/a |
<!-- END_TF_DOCS -->