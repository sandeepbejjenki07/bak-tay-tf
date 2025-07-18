container_registry = [
  {
    resource_group_name = "rg-axis360dev-eastus-004"
    acr_name            = "boundlessACR9"
    sku_type            = "Basic"
    tags = {
      created_by  = "automation"
      owner       = "Vinay Dwivedi"
      environment = "dev004"
    }
  }
]