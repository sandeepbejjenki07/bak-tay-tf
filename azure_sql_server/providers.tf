terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">3.0.0"
    }
  }
  backend "azurerm" {
    
  }
}

provider "azurerm" {
  features {}
  skip_provider_registration = true
}