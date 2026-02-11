terraform {
  backend "azurerm" {
    resource_group_name  = "rg-tfstate-test"
    storage_account_name = "sttfstatetest"
    container_name       = "tfstate"
    key                  = "dev/terraform.tfstate"
  }
}
