output "mssqlserver_database_id" {
  description = "The ID of the MS SQL Database."
  value       = azurerm_mssql_database.mssql_database.id
}
