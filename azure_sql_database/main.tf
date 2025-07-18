module "sql_db" {
  source              = "./sql_db_module"
  for_each            = { for i in var.sql_database : i.database_name => i }
  resource_group_name = each.value.resource_group_name
  database_name       = each.value.database_name
  sqlserver_name      = each.value.sqlserver_name
  database_collation  = each.value.database_collation
  db_license_type     = each.value.db_license_type
  db_size_gb          = each.value.db_size_gb
  db_read_scale       = each.value.db_read_scale
  db_sku_name         = each.value.db_sku_name
  db_zone_redundant   = each.value.db_zone_redundant
  tags                = each.value.tags
}