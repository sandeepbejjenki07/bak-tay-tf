data "azurerm_resource_group" "resource_group" {
  name = var.resource_group_name
}

resource "azurerm_servicebus_namespace" "servicebus" {
  name                = var.servicebus_name
  location            = data.azurerm_resource_group.resource_group.location
  resource_group_name = data.azurerm_resource_group.resource_group.name
  sku                 = var.sku
  tags                = var.tags
}
