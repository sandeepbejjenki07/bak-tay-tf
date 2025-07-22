variable "topic_subscription" {
  type = list(object({
    servicebus_namespace  = string
    resource_group_name   = string
    servicebus_topic_name = string
    topic_sub_name        = string
    max_delivery_count    = number
  }))
}
