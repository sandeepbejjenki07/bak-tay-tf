output "ser_bus_id" {
  description = "The ID of Service Bus Namespace"
  value       = { for k, v in module.servicebus : k => v.service_bus_id }
}

output "ser_bus_endpoint" {
  description = "The URL to access the ServiceBus Namespace."
  value       = { for p, q in module.servicebus : p => q.service_bus_endpoint }
}
