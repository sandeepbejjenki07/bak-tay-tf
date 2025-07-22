output "topic_id" {
  description = "The ServiceBus Topic ID"
  value       = { for i, id in module.topic : i => id.topic_id }
}
