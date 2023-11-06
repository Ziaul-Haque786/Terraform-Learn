resource "azurerm_storage_container" "container1" {
  name                  = "container1"
  storage_account_name  = "appstr1122"
  container_access_type = "blob"

  depends_on = [ azurerm_storage_account.appstr1122 ]
}

resource "azurerm_storage_blob" "blobfile" {
  name                   = "main.tf"
  storage_account_name   = "appstr1122"
  storage_container_name = "container1"
  type                   = "Block"
  source                 = "main.tf"

  depends_on = [ azurerm_storage_container.container1 ]
}