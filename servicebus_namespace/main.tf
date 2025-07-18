module "servicebus" {
  source              = "./servicebus_module"
  for_each            = { for i in var.service_bus : i.servicebus_name => i }
  resource_group_name = each.value.resource_group_name
  servicebus_name     = each.value.servicebus_name
  sku                 = each.value.sku
  tags                = var.tags
}