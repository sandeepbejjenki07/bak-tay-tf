output "id" {
  description = "The ID of the Container Registry"
  value       = azurerm_container_registry.acr.id
}

output "name" {
  description = "The Name of the Container Registry"
  value       = azurerm_container_registry.acr.name
}
