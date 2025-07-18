sql_server = [
  {
    sqlserver_name       = "boundlesssqlserver1"
    resource_group_name  = "rg-axis360uat-eastus-002"
    location             = "East US"
    sqlserver_version    = "12.0"
    admin_login_user     = "missadministrator"
    admin_login_password = "thisIsKat11"
    tags = {
      created_by  = "automation"
      owner       = "Vinay Dwivedi"
      environment = "uat02"
    }
  }
]