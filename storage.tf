resource "azurerm_storage_account" "appstr1122" {
  name                     = "appstr1122"
  resource_group_name      = "app-grp"
  location                 = "Central India"
  account_tier             = "Standard"
  account_replication_type = "LRS"

  depends_on = [ azurerm_resource_group.appgrp ]
}