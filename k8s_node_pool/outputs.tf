output "nood_pool_id" {
  description = "The ID's of the Kubernetes Cluster Node Pool"
  value       = { for i, id in module.nood_pool : i => id.node_pool_id }
}

output "cluster_id" {
  description = "Kubernetes Cluder ID"
  value       = { for i, id in module.nood_pool : i => id.cluster_id }
}