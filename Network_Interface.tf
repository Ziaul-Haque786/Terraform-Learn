

resource "azurerm_network_interface" "appinterface" {
  name                = "appinterface"
  location            = local.location
  resource_group_name = local.resource_group_name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.SubnetA.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id = azurerm_public_ip.appip.id
  }

  depends_on = [ azurerm_virtual_network.Vnet1 ]
}

output "resource_id" {
  value = azurerm_subnet.SubnetA.id
}