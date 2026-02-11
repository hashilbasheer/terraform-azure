provider "azurerm" {
  features {}

  # Optional placeholders. Leave null to use device authentication via Azure CLI.
  subscription_id = var.subscription_id
  tenant_id       = var.tenant_id
}
