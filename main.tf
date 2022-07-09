resource "azurerm_resource_group" "resource_group" {
  name     = "meineteilchen2"
  location = "West Europe"
}
resource "azurerm_container_registry" "acr" {
  name                = "teilchenmanual2"
  resource_group_name = azurerm_resource_group.resource_group.name
  location            = azurerm_resource_group.resource_group.location
  sku                 = "Standard"
  admin_enabled       = false
}