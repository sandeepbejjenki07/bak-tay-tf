data "azurerm_servicebus_namespace" "srv_bus" {
  name                = var.servicebus_namespace
  resource_group_name = var.resource_group_name
}

resource "azurerm_servicebus_queue" "queue" {
  name                         = var.queue_name
  namespace_id                 = data.azurerm_servicebus_namespace.srv_bus.id
  status                       = var.servicebus_status
  enable_partitioning          = var.require_partition
  max_size_in_megabytes        = var.max_size_in_MB
  requires_duplicate_detection = var.duplicate_detection_required
}