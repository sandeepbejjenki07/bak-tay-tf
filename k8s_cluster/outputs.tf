output "k8s_id" {
  description = "The Kubernetes Managed Cluster ID"
  value       = { for k, v in module.k8s_cluster : k => v.k8s_id }
}

output "kube_config_raw" {
  description = "Raw Kubernetes config to be used by kubectl and other compatible tools."
  value       = { for p, q in module.k8s_cluster : p => q.kube_config_raw }
  sensitive   = true
}