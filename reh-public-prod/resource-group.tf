resource "azurerm_resource_group" "reh_public_rg" {
  name     = "${local.product}-public-${local.env}-rg"
  location = "uksouth"
}
