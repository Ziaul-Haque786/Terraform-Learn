resource "azurerm_windows_virtual_machine" "appvm" {
  name                = "app-vm"
  resource_group_name = local.resource_group_name
  location            = local.location
  size                = "Standard_B2s"
  admin_username      = "adminuser"
  admin_password      = "Azure@654321"
  network_interface_ids = [
    azurerm_network_interface.appinterface.id
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2019-Datacenter"
    version   = "latest"
  }
}