k8s_node_pool = [
  {
  k8s_cluster_name    = "btdotnet"
  resource_group_name = "rg-axis360uat-eastus-002"
  node_pool_name      = "linuxpool"
  vm_size             = "Standard_DS2_v2"
  node_count          = 1
  os_type             = "Linux"
  environment         = "dev"
  app_type            = "dotnet-apps"
  tags = {
    created_by  = "automation"
    owner       = "Vinay Dwivedi"
    environment = "uat02"
  }
}
]