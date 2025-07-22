module "subscription" {
  source                = "./subscription_module"
  for_each              = { for i in var.topic_subscription : i.topic_sub_name => i }
  servicebus_namespace  = each.value.servicebus_namespace
  resource_group_name   = each.value.resource_group_name
  servicebus_topic_name = each.value.servicebus_topic_name
  topic_sub_name        = each.value.topic_sub_name
  max_delivery_count    = each.value.max_delivery_count
}