variable "k8s_node_pool" {
  type = list(object({
    k8s_cluster_name    = string
    resource_group_name = string
    node_pool_name      = string
    vm_size             = string
    node_count          = number
    os_type             = string
    environment         = string
    app_type            = string
    tags                = map(any)
  }))
}