output "k8s_id" {
  description = "The Kubernetes Managed Cluster ID"
  value       = azurerm_kubernetes_cluster.cluster.id
}

output "kube_config_raw" {
  description = "Raw Kubernetes config to be used by kubectl and other compatible tools."
  value       = azurerm_kubernetes_cluster.cluster.kube_config_raw
  sensitive = true
}