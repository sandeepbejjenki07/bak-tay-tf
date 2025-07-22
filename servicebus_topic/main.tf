module "topic" {
  source                       = "./servicebus_topic_module"
  for_each                     = { for i in var.topic : i.topic_name => i }
  servicebus_namespace         = each.value.servicebus_namespace
  resource_group_name          = each.value.resource_group_name
  topic_name                   = each.value.topic_name
  servicebus_status            = each.value.servicebus_status
  require_partition            = each.value.require_partition
  max_size_in_MB               = each.value.max_size_in_MB
  duplicate_detection_required = each.value.duplicate_detection_required
}