variable "name" {
  type = string
}

variable "location" {
  type = string
}

variable "resource_group_name" {
  type = string
}

variable "dns_prefix" {
  type = string
}

variable "kubernetes_version" {
  type    = string
  default = null
}

variable "sku_tier" {
  type    = string
  default = "Free"
}

variable "private_cluster_enabled" {
  type    = bool
  default = true
}

variable "local_account_disabled" {
  type    = bool
  default = false
}

variable "role_based_access_control_enabled" {
  type    = bool
  default = true
}

variable "system_node_pool" {
  type = object({
    name                = string
    vm_size             = string
    node_count          = number
    subnet_id           = string
    max_pods            = number
    enable_auto_scaling = bool
    min_count           = number
    max_count           = number
  })
}

variable "network_profile" {
  type = object({
    network_plugin     = string
    network_policy     = string
    service_cidr       = string
    dns_service_ip     = string
    load_balancer_sku  = string
    outbound_type      = string
  })
  default = {
    network_plugin     = "azure"
    network_policy     = "azure"
    service_cidr       = "10.0.0.0/16"
    dns_service_ip     = "10.0.0.10"
    load_balancer_sku  = "standard"
    outbound_type      = "loadBalancer"
  }
}

variable "tags" {
  type    = map(string)
  default = {}
}
