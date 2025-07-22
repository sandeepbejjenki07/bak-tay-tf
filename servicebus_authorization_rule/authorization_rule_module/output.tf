output "servicebus_rule_id" {
  description = "The Primary Key for the ServiceBus Namespace authorization Rule."
  value       = azurerm_servicebus_namespace_authorization_rule.asb_rule.id
}

output "servicebus_primary_key" {
  description = "The Primary Key for the ServiceBus Namespace authorization Rule."
  value       = azurerm_servicebus_namespace_authorization_rule.asb_rule.primary_key
}

output "servicebus_primary_connection_string" {
  description = "The Primary Connection String for the ServiceBus Namespace authorization Rule"
  value       = azurerm_servicebus_namespace_authorization_rule.asb_rule.primary_connection_string
}
