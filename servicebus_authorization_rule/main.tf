module "servicebus_auth_rule" {
  source                  = "./authorization_rule_module"
  for_each                = { for rule in var.servicebus_rule : rule.authorization_rule_name => rule }
  servicebus_namespace    = each.value.servicebus_namespace
  resource_group_name     = each.value.resource_group_name
  authorization_rule_name = each.value.authorization_rule_name
  listen_is_needed        = each.value.listen_is_needed
  send_is_needed          = each.value.send_is_needed
  manage_is_needed        = each.value.manage_is_needed
}