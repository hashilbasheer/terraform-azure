<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.5.0 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~> 3.100 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_aks"></a> [aks](#module\_aks) | ../../modules/aks | n/a |
| <a name="module_rg"></a> [rg](#module\_rg) | ../../modules/resource_group | n/a |
| <a name="module_user_pool"></a> [user\_pool](#module\_user\_pool) | ../../modules/node_pool | n/a |
| <a name="module_vnet"></a> [vnet](#module\_vnet) | ../../modules/vnet | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aks_name"></a> [aks\_name](#input\_aks\_name) | n/a | `string` | n/a | yes |
| <a name="input_aks_sku_tier"></a> [aks\_sku\_tier](#input\_aks\_sku\_tier) | n/a | `string` | `"Free"` | no |
| <a name="input_dns_prefix"></a> [dns\_prefix](#input\_dns\_prefix) | n/a | `string` | n/a | yes |
| <a name="input_kubernetes_version"></a> [kubernetes\_version](#input\_kubernetes\_version) | n/a | `string` | `null` | no |
| <a name="input_local_account_disabled"></a> [local\_account\_disabled](#input\_local\_account\_disabled) | n/a | `bool` | `false` | no |
| <a name="input_location"></a> [location](#input\_location) | n/a | `string` | n/a | yes |
| <a name="input_network_profile"></a> [network\_profile](#input\_network\_profile) | n/a | <pre>object({<br>    network_plugin     = string<br>    network_policy     = string<br>    service_cidr       = string<br>    dns_service_ip     = string<br>    load_balancer_sku  = string<br>    outbound_type      = string<br>  })</pre> | <pre>{<br>  "dns_service_ip": "10.0.0.10",<br>  "load_balancer_sku": "standard",<br>  "network_plugin": "azure",<br>  "network_policy": "azure",<br>  "outbound_type": "loadBalancer",<br>  "service_cidr": "10.0.0.0/16"<br>}</pre> | no |
| <a name="input_private_cluster_enabled"></a> [private\_cluster\_enabled](#input\_private\_cluster\_enabled) | n/a | `bool` | `true` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | n/a | `string` | n/a | yes |
| <a name="input_role_based_access_control_enabled"></a> [role\_based\_access\_control\_enabled](#input\_role\_based\_access\_control\_enabled) | n/a | `bool` | `true` | no |
| <a name="input_subnets"></a> [subnets](#input\_subnets) | n/a | <pre>map(object({<br>    address_prefixes = list(string)<br>  }))</pre> | n/a | yes |
| <a name="input_subscription_id"></a> [subscription\_id](#input\_subscription\_id) | n/a | `string` | `null` | no |
| <a name="input_system_pool"></a> [system\_pool](#input\_system\_pool) | n/a | <pre>object({<br>    name                = string<br>    vm_size             = string<br>    node_count          = number<br>    subnet_name         = string<br>    max_pods            = number<br>    enable_auto_scaling = bool<br>    min_count           = number<br>    max_count           = number<br>  })</pre> | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | n/a | `map(string)` | `{}` | no |
| <a name="input_tenant_id"></a> [tenant\_id](#input\_tenant\_id) | n/a | `string` | `null` | no |
| <a name="input_user_pool"></a> [user\_pool](#input\_user\_pool) | n/a | <pre>object({<br>    name                = string<br>    vm_size             = string<br>    node_count          = number<br>    subnet_name         = string<br>    max_pods            = number<br>    enable_auto_scaling = bool<br>    min_count           = number<br>    max_count           = number<br>  })</pre> | n/a | yes |
| <a name="input_vnet_address_space"></a> [vnet\_address\_space](#input\_vnet\_address\_space) | n/a | `list(string)` | n/a | yes |
| <a name="input_vnet_name"></a> [vnet\_name](#input\_vnet\_name) | n/a | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_aks_name"></a> [aks\_name](#output\_aks\_name) | n/a |
| <a name="output_aks_node_resource_group"></a> [aks\_node\_resource\_group](#output\_aks\_node\_resource\_group) | n/a |
| <a name="output_kube_config_raw"></a> [kube\_config\_raw](#output\_kube\_config\_raw) | n/a |
| <a name="output_resource_group_name"></a> [resource\_group\_name](#output\_resource\_group\_name) | n/a |
| <a name="output_subnet_ids"></a> [subnet\_ids](#output\_subnet\_ids) | n/a |
| <a name="output_vnet_id"></a> [vnet\_id](#output\_vnet\_id) | n/a |
<!-- END_TF_DOCS -->