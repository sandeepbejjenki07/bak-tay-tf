variable "k8s_cluster" {
  type = list(object({
    resource_group_name = string
    cluster_name      = string
    environment       = string
    instance_count    = number
    instance_size     = string
    tags              = map(any)
  }))
}