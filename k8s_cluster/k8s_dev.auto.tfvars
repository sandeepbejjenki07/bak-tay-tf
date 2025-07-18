k8s_cluster = [
  {
    resource_group_name = "rg-axis360qa-eastus-004"
    cluster_name        = "btdotnet"
    environment         = "dev"
    instance_count      = 1
    instance_size       = "Standard_D2_v2"
    tags = {
      created_by  = "automation"
      owner       = "Vinay Dwivedi"
      environment = "uat02"
    }
  }
]