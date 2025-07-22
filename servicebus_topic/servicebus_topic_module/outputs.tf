output "topic_id" {
  description = "The ServiceBus Topic ID"
  value       = azurerm_servicebus_topic.topic.id
}
