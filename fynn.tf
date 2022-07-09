resource "azurerm_resource_group" "rg" {
  name     = "meineteilchen"
  location = "West Europe"
}

resource "azurerm_container_registry" "acr" {
  name                = "teilchenmanual"
  resource_group_name = "meineteilchen"
  location            = "teilchenmanual.azurecr.io"
  sku                 = "Standard"
  georeplications {
    location                = "westeurope"
    zone_redundancy_enabled = true
    tags                    = {}
  }
}