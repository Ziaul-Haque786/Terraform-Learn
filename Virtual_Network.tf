resource "azurerm_virtual_network" "Vnet1" {
  name                = "Vnet"
  location            = local.location
  resource_group_name = local.azurerm_resource_group
  address_space       = ["10.0.0.0/16"]
 

  subnet {
    name           = local.Subnet[0].name
    address_prefix = local.Subnet[0].address_prefix
  }

  subnet {
    name           = local.Subnet[1].name
    address_prefix = local.Subnet[1].address_prefix
    
  }

depends_on = [ azurerm_resource_group.appgrp ]

}