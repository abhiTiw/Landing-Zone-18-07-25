terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.116.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "cb9555ea-8e50-4461-a61b-e3667756c521"
}