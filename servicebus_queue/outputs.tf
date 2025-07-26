output "queue_id" {
  description = "The ServiceBus queue ID"
  value       = { for i, id in module.queue : i => id.queue_id }
}
