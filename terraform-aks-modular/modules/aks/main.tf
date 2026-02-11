resource "azurerm_kubernetes_cluster" "this" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name
  dns_prefix          = var.dns_prefix

  kubernetes_version = var.kubernetes_version
  sku_tier           = var.sku_tier

  private_cluster_enabled           = var.private_cluster_enabled
  local_account_disabled            = var.local_account_disabled
  role_based_access_control_enabled = var.role_based_access_control_enabled

  default_node_pool {
    name                = var.system_node_pool.name
    vm_size             = var.system_node_pool.vm_size
    node_count          = var.system_node_pool.node_count
    vnet_subnet_id      = var.system_node_pool.subnet_id
    max_pods            = var.system_node_pool.max_pods
    enable_auto_scaling = var.system_node_pool.enable_auto_scaling
    min_count           = var.system_node_pool.enable_auto_scaling ? var.system_node_pool.min_count : null
    max_count           = var.system_node_pool.enable_auto_scaling ? var.system_node_pool.max_count : null
    type                = "VirtualMachineScaleSets"
  }

  identity {
    type = "SystemAssigned"
  }

  network_profile {
    network_plugin     = var.network_profile.network_plugin
    network_policy     = var.network_profile.network_policy
    service_cidr       = var.network_profile.service_cidr
    dns_service_ip     = var.network_profile.dns_service_ip
    load_balancer_sku  = var.network_profile.load_balancer_sku
    outbound_type      = var.network_profile.outbound_type
  }

  tags = var.tags
}
