data "azurerm_resource_group" "rg" {
  name = var.resource_grp_name
}

resource "azurerm_kubernetes_cluster" "cluster" {
  name                = var.cluster_name
  location            = data.azurerm_resource_group.rg.location
  resource_group_name = data.azurerm_resource_group.rg.name
  dns_prefix          = "${var.environment}-k8s-cluster"

  default_node_pool {
    name       = "${var.cluster_name}pool"
    node_count = var.instance_count
    vm_size    = var.instance_size
  }

  # Routing traffic into the cluster with an Ingress
  addon_profile {
    http_application_routing {
      enabled = true
    }
  }

  identity {
    type = "SystemAssigned"
  }

  tags = var.tags

}