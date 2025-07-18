output "server_id" {
  description = "The Microsoft SQL Server ID"
  value       = { for i, id in module.sql_server : i => id.mssql_server_id }
}

output "mssql_fqdn_name" {
  description = "The fully qualified domain name of the Azure SQL Server (e.g. myServerName.database.windows.net)"
  value       = { for i, name in module.sql_server : i => name.mssql_fully_qualified_domain_name }
}

