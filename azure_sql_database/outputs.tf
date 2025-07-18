output "database_id" {
  description = "The ID of the MS SQL Database."
  value       = { for i, id in module.sql_db : i => id.mssqlserver_database_id }
}
