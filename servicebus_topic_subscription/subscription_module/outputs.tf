output "subscription_id" {
  description = "The ServiceBus Subscription ID"
  value       = azurerm_servicebus_subscription.topic_subscription.id
}
