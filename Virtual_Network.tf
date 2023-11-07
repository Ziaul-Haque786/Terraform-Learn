resource "azurerm_virtual_network" "Vnet1" {
  name                = "Vnet1"
  location            = local.location
  resource_group_name = local.resource_group_name
  address_space       = ["10.0.0.0/16"]

  depends_on = [ azurerm_resource_group.appgrp ]
 

}