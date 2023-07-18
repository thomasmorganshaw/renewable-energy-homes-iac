resource "azurerm_storage_account" "rehstorage" {
  name                     = "${local.product}storage${local.env}"
  resource_group_name      = azurerm_resource_group.reh_private_rg.name
  location                 = azurerm_resource_group.reh_private_rg.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
  account_kind             = "StorageV2"
  access_tier              = "Hot" # change to "Cool" after initial DevOps setup

  tags = {
    environment = local.env
  }
}

resource "azurerm_storage_container" "rehstorage_container" {
  name                  = "assets"
  storage_account_name  = azurerm_storage_account.rehstorage.name
  container_access_type = "blob"
}
