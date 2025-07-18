output "service_bus_id" {
  description = "The ID of Service Bus Namespace"
  value       = azurerm_servicebus_namespace.servicebus.id
}

output "service_bus_endpoint" {
  description = "The URL to access the ServiceBus Namespace."
  value       = azurerm_servicebus_namespace.servicebus.endpoint
}
