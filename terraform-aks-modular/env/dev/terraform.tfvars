location            = "eastus"
resource_group_name = "rg-aks-dev"
vnet_name           = "vnet-aks-dev"
vnet_address_space  = ["10.100.0.0/16"]

subnets = {
  snet-system = {
    address_prefixes = ["10.100.1.0/24"]
  }
  snet-user = {
    address_prefixes = ["10.100.2.0/24"]
  }
}

aks_name   = "aks-dev"
dns_prefix = "aks-dev"

system_pool = {
  name                = "sysnp"
  vm_size             = "Standard_DS2_v2"
  node_count          = 1
  subnet_name         = "snet-system"
  max_pods            = 110
  enable_auto_scaling = true
  min_count           = 1
  max_count           = 3
}

user_pool = {
  name                = "usernp"
  vm_size             = "Standard_DS2_v2"
  node_count          = 1
  subnet_name         = "snet-user"
  max_pods            = 110
  enable_auto_scaling = true
  min_count           = 1
  max_count           = 3
}

tags = {
  env = "dev"
}

# Optional provider placeholders (device auth via Azure CLI if left null)
subscription_id = null
tenant_id       = null
