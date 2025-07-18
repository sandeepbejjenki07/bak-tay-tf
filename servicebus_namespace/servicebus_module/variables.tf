variable "tags" {
  type        = map(any)
  description = "Labels for resources"
  default = {
    created_by  = ""
    owner       = ""
    environment = ""
  }
}

variable "resource_group_name" {
  type = string
}


variable "servicebus_name" {
  type = string
}

variable "sku" {
  type = string
}
