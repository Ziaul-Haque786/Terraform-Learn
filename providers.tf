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
  subscription_id = "7d8c9d23-c48a-4064-9fc4-2ce2aa23f097"
  tenant_id = "597cd869-12dc-41d2-ad26-7970155104d6"
  client_id = "2b296b36-b904-49dc-b59d-dffb7e1b8558"
  client_secret = "mtc8Q~dzAdU.Y_uiQCkJ66dXIZpBzg4gQVFhLbe2"
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