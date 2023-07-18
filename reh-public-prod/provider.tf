terraform {

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.65.0"
    }
  }

  # Terraform cloud
  # C:\Users\tom-m\AppData\Roaming\terraform.d\credentials.tfrc.json
  # cloud {
  #   organization = "thomasmorganshaw"

  #   workspaces {
  #     name = "reh-iac"
  #   }
  # }
}

provider "azurerm" {
  features {}
}
