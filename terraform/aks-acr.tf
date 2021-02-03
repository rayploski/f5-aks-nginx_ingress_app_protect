# Create an Azure Container Registry
resource "azurerm_container_registry" "acr" {
  name                     = "CloudBuilder"
  resource_group_name      = azurerm_resource_group.default.name
  location                 = azurerm_resource_group.default.location
  sku                      = "Basic"
  admin_enabled            = true
  tags = {
    environment = "HashiCorp-F5-Azure Workshop"
  }
}