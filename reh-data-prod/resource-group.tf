resource "azurerm_resource_group" "reh_data_rg" {
  name     = "${local.product}-data-${local.env}-rg"
  location = "uksouth"
}
