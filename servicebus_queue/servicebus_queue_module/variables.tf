variable "tags" {
  type        = map(any)
  description = "Labels for resources"
  default = {
    created_by  = ""
    owner       = ""
    environment = ""
  }
}

variable "servicebus_namespace" {
  type = string
}

variable "resource_group_name" {
  type = string
}

variable "queue_name" {
  type = string
}

variable "servicebus_status" {
  type = string
}

variable "require_partition" {
  type = bool
}

variable "max_size_in_MB" {
  type = number
}

variable "duplicate_detection_required" {
  type = bool
}
