sql_database = [
  {
    resource_group_name = "rg-axis360dev-eastus-004"
    database_name       = "bt-uat-sqldb"
    sqlserver_name      = "btdev4axisdbserver"
    database_collation  = "SQL_Latin1_General_CP1_CI_AS"
    db_license_type     = "BasePrice"
    db_size_gb          = 4
    db_read_scale       = "false"
    db_sku_name         = "S0"
    db_zone_redundant   = "false"
    tags = {
      created_by  = "automation"
      owner       = "Vinay Dwivedi"
      environment = "uat02"
    }
  }
]