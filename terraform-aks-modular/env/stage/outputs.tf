output "resource_group_name" {
  value = module.rg.name
}

output "vnet_id" {
  value = module.vnet.vnet_id
}

output "subnet_ids" {
  value = module.vnet.subnet_ids
}

output "aks_name" {
  value = module.aks.name
}

output "aks_node_resource_group" {
  value = module.aks.node_resource_group
}

output "kube_config_raw" {
  value     = module.aks.kube_config_raw
  sensitive = true
}
