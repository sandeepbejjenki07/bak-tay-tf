servicebus_rule = [{
  servicebus_namespace    = "btservicebustest1"
  resource_group_name     = "rg-axis360uat-eastus-002"
  authorization_rule_name = "devrule1"
  listen_is_needed        = true
  send_is_needed          = true
  manage_is_needed        = false
}]

