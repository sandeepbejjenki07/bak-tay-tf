variable "container_registry" {
  type = list(object({
    resource_group_name = string
    acr_name            = string
    sku_type            = string
    tags                = map(any)
  }))
}