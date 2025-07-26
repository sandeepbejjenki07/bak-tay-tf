module "queue" {
  source                       = "./servicebus_queue_module"
  for_each                     = { for q in var.queue : q.queue_name => q }
  servicebus_namespace         = each.value.servicebus_namespace
  resource_group_name          = each.value.resource_group_name
  queue_name                   = each.value.queue_name
  servicebus_status            = each.value.servicebus_status
  require_partition            = each.value.require_partition
  max_size_in_MB               = each.value.max_size_in_MB
  duplicate_detection_required = each.value.duplicate_detection_required
}