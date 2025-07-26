output "queue_id" {
  description = "The ServiceBus queue ID"
  value       = azurerm_servicebus_queue.queue.id
}
