terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.75.0"
    }
  }
}

provider "azurerm" {
  # Configuration options
  subscription_id = "XXXXXXXXXXXXXXXX"
  tenant_id = "XXXXXXXXXXXXXXXXXXXXXXXXXXXX"
  client_id = "XXXXXXXXXXXXXXXXXXXXX"
  client_secret = "XXXXXXXXXXXXXXXXXXXXX"
  features {}

}

locals {
  resource_group_name = "app-grp"
  location = "Central India"

  subnet = [{
    name = "SubnetA"
    address_prefix = "10.0.1.0/24"

  },

  {
  
    name = "SubnetB"
    address_prefix = "10.0.2.0/24"
  }
  ]


}
