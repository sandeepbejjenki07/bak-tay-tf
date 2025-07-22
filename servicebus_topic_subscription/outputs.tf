output "subscription_id" {
  description = "The ServiceBus Subscription ID"
  value       = { for i, id in module.subscription : i => id.subscription_id }
}
