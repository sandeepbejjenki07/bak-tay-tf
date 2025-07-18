variable "resource_group_name" {
  type        = string
  description = "Application region name"
}

variable "database_name" {
  type        = string
  description = "The name of the MS SQL Database. "
}

variable "sqlserver_name" {
  type        = string
  description = "The name of the MS SQL Server on which to create the database."
}

variable "database_collation" {
  type        = string
  description = "Specifies the collation of the database."
}

variable "db_license_type" {
  type        = string
  description = "Specifies the license type applied to this database. Possible values are LicenseIncluded and BasePrice"
}

variable "db_size_gb" {
  type        = number
  description = "The max size of the database in gigabytes"
}

variable "db_read_scale" {
  type        = bool
  description = "If enabled, connections that have application intent set to readonly in their connection string may be routed to a readonly secondary replica. This property is only settable for Premium and Business Critical databases."

}

variable "db_sku_name" {
  type        = string
  description = "Specifies the name of the SKU used by the database. For example, GP_S_Gen5_2,HS_Gen4_1,BC_Gen5_2, ElasticPool, Basic,S0, P2 ,DW100c, DS100. "
}

variable "db_zone_redundant" {
  type        = bool
  description = "Whether or not this database is zone redundant, which means the replicas of this database will be spread across multiple availability zones."
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