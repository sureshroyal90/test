terraform {
  required_version = ">=1.10.0"
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        version = ">=2.0"
    }
  }
}

provider "azurerm" {
    features {}
    subscription_id = "e1b21105-d0bc-48ca-b21c-04f2da831144"
  
}

resource "azurerm_resource_group" "myresource" {
    name = "myresource01"
    location = "East US"
  
}