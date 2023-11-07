resource "azurerm_storage_account" "appstr11212" {
  name                     = "appstr11212"
  resource_group_name      = local.resource_group_name
  location                 = local.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  depends_on = [ azurerm_resource_group.appgrp ]
}