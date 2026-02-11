module "rg" {
  source   = "../../modules/resource_group"
  name     = var.resource_group_name
  location = var.location
  tags     = var.tags
}

module "vnet" {
  source              = "../../modules/vnet"
  name                = var.vnet_name
  location            = module.rg.location
  resource_group_name = module.rg.name
  address_space       = var.vnet_address_space
  subnets             = var.subnets
  tags                = var.tags
}

module "aks" {
  source              = "../../modules/aks"
  name                = var.aks_name
  location            = module.rg.location
  resource_group_name = module.rg.name
  dns_prefix          = var.dns_prefix
  kubernetes_version  = var.kubernetes_version
  sku_tier            = var.aks_sku_tier

  private_cluster_enabled           = var.private_cluster_enabled
  local_account_disabled            = var.local_account_disabled
  role_based_access_control_enabled = var.role_based_access_control_enabled

  system_node_pool = {
    name                = var.system_pool.name
    vm_size             = var.system_pool.vm_size
    node_count          = var.system_pool.node_count
    subnet_id           = module.vnet.subnet_ids[var.system_pool.subnet_name]
    max_pods            = var.system_pool.max_pods
    enable_auto_scaling = var.system_pool.enable_auto_scaling
    min_count           = var.system_pool.min_count
    max_count           = var.system_pool.max_count
  }

  network_profile = var.network_profile
  tags            = var.tags
}

module "user_pool" {
  source                = "../../modules/node_pool"
  name                  = var.user_pool.name
  kubernetes_cluster_id = module.aks.id
  vm_size               = var.user_pool.vm_size
  node_count            = var.user_pool.node_count
  subnet_id             = module.vnet.subnet_ids[var.user_pool.subnet_name]
  max_pods              = var.user_pool.max_pods
  enable_auto_scaling   = var.user_pool.enable_auto_scaling
  min_count             = var.user_pool.min_count
  max_count             = var.user_pool.max_count
  mode                  = "User"
  os_type               = "Linux"
  tags                  = var.tags
}
