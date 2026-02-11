location            = "eastus"
resource_group_name = "rg-aks-stage"
vnet_name           = "vnet-aks-stage"
vnet_address_space  = ["10.110.0.0/16"]

subnets = {
  snet-system = {
    address_prefixes = ["10.110.1.0/24"]
  }
  snet-user = {
    address_prefixes = ["10.110.2.0/24"]
  }
}

aks_name   = "aks-stage"
dns_prefix = "aks-stage"

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
  env = "stage"
}

# Optional provider placeholders (device auth via Azure CLI if left null)
subscription_id = null
tenant_id       = null
