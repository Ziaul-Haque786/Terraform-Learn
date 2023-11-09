
resource "azurerm_subnet" "SubnetA" {
  name                 = local.subnet[0].name
  resource_group_name  = local.resource_group_name
  virtual_network_name = "Vnet1"
  address_prefixes     = [local.subnet[0].address_prefix]

  depends_on = [ azurerm_virtual_network.Vnet1 ]
}

resource "azurerm_subnet" "SubnetB" {
  name                 = local.subnet[1].name
  resource_group_name  = local.resource_group_name
  virtual_network_name = "Vnet1"
  address_prefixes     = [local.subnet[1].address_prefix]

 depends_on = [ azurerm_resource_group.appgrp ]
  

}

