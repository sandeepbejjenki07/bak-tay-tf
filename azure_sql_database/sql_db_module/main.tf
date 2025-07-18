data "azurerm_mssql_server" "mssql_server" {
  name                = var.sqlserver_name
  resource_group_name = var.resource_group_name
}

resource "azurerm_mssql_database" "mssql_database" {
  name           = var.database_name
  server_id      = data.azurerm_mssql_server.mssql_server.id
  collation      = var.database_collation
  license_type   = var.db_license_type
  max_size_gb    = var.db_size_gb
  read_scale     = var.db_read_scale
  sku_name       = var.db_sku_name
  zone_redundant = var.db_zone_redundant

  tags = var.tags
}