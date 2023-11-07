resource "azurerm_storage_container" "container1" {
  name                  = "container1"
  storage_account_name  = "appstr11212"
  container_access_type = "blob"

  depends_on = [ azurerm_storage_account.appstr11212 ]
}

resource "azurerm_storage_blob" "blobfile" {
  name                   = "main.tf"
  storage_account_name   = "appstr11212"
  storage_container_name = "container1"
  type                   = "Block"
  source                 = "C:/Terraform_Project/All Resources/Terraform-Learn/main.tf"

  depends_on = [ azurerm_storage_container.container1 ]
}