output "acr_id" {
  description = "The ID of the Container Registry"
  value       = { for i, acr in module.acr : i => acr.id }
}

output "acr_name" {
  description = "The Name of the Container Registry"
  value       = { for p, acr in module.acr : p => acr.name }
}
