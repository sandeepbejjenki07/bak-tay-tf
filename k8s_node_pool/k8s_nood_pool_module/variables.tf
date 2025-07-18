variable "k8s_cluster_name" {
  type        = string
  default = ""
}

variable "resource_group_name" {
  type        = string
  default     = ""
}

variable "node_pool_name" {
  type        = string
  default     = "windows-pool"
}

variable "vm_size" {
  type        = string
  default     = "Standard_DS2_v2"
}

variable "node_count" {
  type        = number
  default     = 2
}

variable "os_type" {
  type        = string
  default     = "Windows"
}

variable "app_type" {
  type        = string
  default     = "dotnet-apps"
}

variable "environment" {
  type        = string
  default     = "dev"
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