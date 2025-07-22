variable "servicebus_rule" {
  type = list(object({
    servicebus_namespace    = string
    resource_group_name     = string
    authorization_rule_name = string
    listen_is_needed        = bool
    send_is_needed          = bool
    manage_is_needed        = bool
  }))
}