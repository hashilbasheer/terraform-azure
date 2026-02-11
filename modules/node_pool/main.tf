resource "azurerm_kubernetes_cluster_node_pool" "this" {
  name                  = var.name
  kubernetes_cluster_id = var.kubernetes_cluster_id
  vm_size               = var.vm_size
  node_count            = var.node_count
  vnet_subnet_id        = var.subnet_id
  max_pods              = var.max_pods
  mode                  = var.mode
  os_type               = var.os_type

  enable_auto_scaling = var.enable_auto_scaling
  min_count           = var.enable_auto_scaling ? var.min_count : null
  max_count           = var.enable_auto_scaling ? var.max_count : null

  tags = var.tags
}
