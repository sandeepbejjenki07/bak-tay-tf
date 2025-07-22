topic = [{
  servicebus_namespace         = "btservicebustest1"
  resource_group_name          = "rg-axis360uat-eastus-002"
  topic_name                   = "test_topic_bt"
  servicebus_status            = "Disabled"
  require_partition            = false
  max_size_in_MB               = 1024
  duplicate_detection_required = false
}]