variable "resource_group_name" {
  type    = string
  default = ""
}

variable "acr_name" {
  type    = string
  default = "containerRegistry1"
}

variable "sku_type" {
  type    = string
  default = "Basic"
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