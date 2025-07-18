data "azurerm_kubernetes_cluster" "k8s" {
  name                = var.k8s_cluster_name
  resource_group_name = var.resource_group_name
}

resource "azurerm_kubernetes_cluster_node_pool" "node_pool" {
  name                  = var.node_pool_name
  kubernetes_cluster_id = data.azurerm_kubernetes_cluster.k8s.id
  vm_size               = var.vm_size
  node_count            = var.node_count
  os_type = var.os_type

  node_labels = {
    "nodepool-type" = var.os_type
    "environment"   = var.environment
    "app"           = var.app_type
  }

  tags = var.tags
}