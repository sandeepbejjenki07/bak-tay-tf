variable "tags" {
  type        = map(any)
  description = "Labels for resources"
  default = {
    created_by  = ""
    owner       = ""
    environment = ""
  }
}

variable "service_bus" {
  type = list(object({
    resource_group_name = string
    servicebus_name     = string
    sku                 = string
  }))
}

