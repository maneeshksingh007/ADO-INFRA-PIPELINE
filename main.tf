resource "azurerm_resource_group" "rg01" {
  name     = "pipeline"
  location = "West Europe"
}

terraform {
  backend "azurerm" {
    resource_group_name  = "rg-02"
    storage_account_name = "stg01234t"
    container_name       = "cont01"
    key                  = "prod/terraform.tfstate"
  }
}
terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.46.0"
    }
  }
}

provider "azurerm" {
  features {}
    
  subscription_id = "23c0e86f-685e-49e7-957d-37e6b7710a17"
}