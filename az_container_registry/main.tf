module "acr" {
  source              = "./acr_module"
  for_each            = { for i in var.container_registry : i.acr_name => i }
  resource_group_name = each.value.resource_group_name
  acr_name            = each.value.acr_name
  sku_type            = each.value.sku_type
  tags                = each.value.tags
}