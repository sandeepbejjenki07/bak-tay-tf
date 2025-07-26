variable "queue" {
  type = list(object({
    servicebus_namespace         = string
    resource_group_name          = string
    queue_name                   = string
    servicebus_status            = string
    require_partition            = bool
    max_size_in_MB               = number
    duplicate_detection_required = bool
  }))
}
