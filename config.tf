terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.75.0"
    }
  }
}



resource "azurerm_resource_group" "appgrp" {
  name     = "app-grp"
  location = "Central India"
}

resource "azurerm_storage_account" "appstr011" {
    name = "appstr011"
    location = "Central India"
    resource_group_name = "app-grp"
    account_tier = "Standard"
    account_replication_type = "LRS"

  
}
