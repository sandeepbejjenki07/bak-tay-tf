data "azurerm_servicebus_namespace" "srv_bus" {
  name                = var.servicebus_namespace
  resource_group_name = var.resource_group_name
}

resource "azurerm_servicebus_namespace_authorization_rule" "asb_rule" {
  name         = var.authorization_rule_name
  namespace_id = data.azurerm_servicebus_namespace.srv_bus.id
  listen       = var.listen_is_needed
  send         = var.send_is_needed
  manage       = var.manage_is_needed
}