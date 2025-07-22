data "azurerm_servicebus_namespace" "srv_bus" {
  name                = var.servicebus_namespace
  resource_group_name = var.resource_group_name
}

data "azurerm_servicebus_topic" "topic" {
  name         = var.servicebus_topic_name
  namespace_id = data.azurerm_servicebus_namespace.srv_bus.id
}

resource "azurerm_servicebus_subscription" "topic_subscription" {
  name               = var.topic_sub_name
  topic_id           = data.azurerm_servicebus_topic.topic.id
  max_delivery_count = var.max_delivery_count
}