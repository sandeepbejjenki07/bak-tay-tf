resource "azurerm_mssql_server" "azuresql_server" {
  name                         = var.sqlserver_name
  resource_group_name          = var.resource_group_name
  location                     = var.location
  version                      = var.sqlserver_version
  administrator_login          = var.admin_login_user
  administrator_login_password = var.admin_login_password

  azuread_administrator {
    azuread_authentication_only = true
    login_username              = "Sandeep Bejjenki"
    object_id                   = "fcfaff69-daea-4bad-a2d3-64620d8a7980"
  }
  tags = var.tags
}