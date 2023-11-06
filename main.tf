resource "azurerm_resource_group" "appgrp" {
    name = local.azurerm_resource_group
    location = local.location
  
}