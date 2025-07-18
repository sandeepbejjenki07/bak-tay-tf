output "node_pool_id" {
  description = "The ID of the Kubernetes Cluster Node Pool"
  value       = azurerm_kubernetes_cluster_node_pool.node_pool.id
}

output "cluster_id" {
  description = "Kubernetes Cluder ID"
  value       = azurerm_kubernetes_cluster_node_pool.node_pool.kubernetes_cluster_id
}
