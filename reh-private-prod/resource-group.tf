resource "azurerm_resource_group" "reh_private_rg" {
  name     = "${local.product}-private-${local.env}-rg"
  location = "uksouth"
}
