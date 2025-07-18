variable "resource_group_name" {
  type = string
}

variable "location" {
  type = string
}

variable "tags" {
  type        = map(any)
  description = "Labels for resources"
  default = {
    created_by  = ""
    owner       = ""
    environment = ""
  }
}

variable "sqlserver_name" {
  type        = string
  description = "The name of the Microsoft SQL Server. This needs to be globally unique within Azure. "
}

variable "sqlserver_version" {
  type        = string
  description = "The version for the new server. Valid values are: 2.0 (for v11 server) and 12.0 (for v12 server)."
}

variable "admin_login_user" {
  type        = string
  description = "The administrator login name for the new server."
}

variable "admin_login_password" {
  type        = string
  description = "The password associated with the administrator_login user. Needs to comply with Azure's Password Policy."
}
