variable "resource_grp_name" {
  type = string
}

variable "cluster_name" {
  type = string
}

variable "environment" {
  type = string
}

variable "instance_count" {
  type = number
}

variable "instance_size" {
  type = string
}

variable "tags" {
  type        = map(any)
  description = "Labels for resources"
  default = {
    created_by  = ""
    owner       = ""
    environment = ""
  }
}