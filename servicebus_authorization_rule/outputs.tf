output "rule_id" {
  description = "The ID of the Authorization Rule"
  value       = { for i, id in module.servicebus_auth_rule : i => id.servicebus_rule_id }
}

output "primary_key" {
  description = "The Primary Key for the Authorization Rule"
  value       = { for k, key in module.servicebus_auth_rule : k => key.servicebus_primary_key }
  sensitive = true
}

output "primary_connection_string" {
  description = "description"
  value       = { for j, l in module.servicebus_auth_rule : j => l.servicebus_primary_connection_string }
  sensitive = true
}
