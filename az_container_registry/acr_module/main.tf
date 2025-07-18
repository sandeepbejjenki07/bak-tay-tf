data "azurerm_resource_group" "resource_group" {
  name = var.resource_group_name
}

resource "azurerm_container_registry" "acr" {
  name                = var.acr_name
  resource_group_name = data.azurerm_resource_group.resource_group.name
  location            = data.azurerm_resource_group.resource_group.location
  sku                 = var.sku_type
  admin_enabled       = false

  /* retention_policy = {
    days    = 7
    enabled = true
  } */

  tags = var.tags
}