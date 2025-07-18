variable "sql_database" {
  type = list(object({
    resource_group_name = string
    database_name       = string
    sqlserver_name      = string
    database_collation  = string
    db_license_type     = string
    db_size_gb          = number
    db_read_scale       = string
    db_sku_name         = string
    db_zone_redundant   = string
    tags                = map(any)
  }))
}