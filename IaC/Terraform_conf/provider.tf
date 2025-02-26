terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "~>3.0"
    }
  }
}

provider "azurerm" {
  features {}

  subscription_id   = "<e88c3fe8-5028-4170-bed1-6887015df4f2>"
  tenant_id         = "<b7b023b8-7c32-4c02-92a6-c8cdaa1d189c>"
  client_id         = "<service_principal_appid>"
  client_secret     = "<service_principal_password>"
}
