variable "sql_server" {
  type = list(object({
    sqlserver_name       = string
    resource_group_name  = string
    location             = string
    sqlserver_version    = string
    admin_login_user     = string
    admin_login_password = string
    tags                 = map(any)
  }))
}