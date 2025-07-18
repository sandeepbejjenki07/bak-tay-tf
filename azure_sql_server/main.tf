module "sql_server" {
  source               = "./sql_server_module"
  for_each             = { for i in var.sql_server : i.sqlserver_name => i }
  sqlserver_name       = each.value.sqlserver_name
  resource_group_name  = each.value.resource_group_name
  location             = each.value.location
  sqlserver_version    = each.value.sqlserver_version
  admin_login_user     = each.value.admin_login_user
  admin_login_password = each.value.admin_login_password
}