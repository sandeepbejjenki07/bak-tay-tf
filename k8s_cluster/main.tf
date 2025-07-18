module "k8s_cluster" {
  source            = "./k8s_cluster_module"
  for_each          = { for i in var.k8s_cluster : i.cluster_name => i }
  resource_grp_name = each.value.resource_group_name
  cluster_name      = each.value.cluster_name
  environment       = each.value.environment
  instance_count    = each.value.instance_count
  instance_size     = each.value.instance_size
  tags              = each.value.tags
}