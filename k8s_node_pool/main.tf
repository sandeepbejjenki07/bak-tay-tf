module "nood_pool" {
  source              = "./k8s_nood_pool_module"
  for_each            = { for i in var.k8s_node_pool : i.node_pool_name => i }
  k8s_cluster_name    = each.value.k8s_cluster_name
  resource_group_name = each.value.resource_group_name
  node_pool_name      = each.value.node_pool_name
  vm_size             = each.value.vm_size
  node_count          = each.value.node_count
  os_type             = each.value.os_type
  environment         = each.value.environment
  app_type            = each.value.app_type
  tags                = each.value.tags
}