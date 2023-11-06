resource "azurerm_virtual_network" "Vnet1" {
  name                = "Vnet"
  location            = local.location
  resource_group_name = local.azurerm_resource_group
  address_space       = ["10.0.0.0/16"]
 

  subnet {
    name           = "subnetA"
    address_prefix = "10.0.1.0/24"
  }

  subnet {
    name           = "subnetB"
    address_prefix = "10.0.2.0/24"
    
  }

depends_on = [ azurerm_resource_group.appgrp ]

}