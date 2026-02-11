variable "name" {
  type = string
}

variable "kubernetes_cluster_id" {
  type = string
}

variable "vm_size" {
  type = string
}

variable "node_count" {
  type = number
}

variable "subnet_id" {
  type = string
}

variable "max_pods" {
  type    = number
  default = 110
}

variable "mode" {
  type    = string
  default = "User"
}

variable "os_type" {
  type    = string
  default = "Linux"
}

variable "enable_auto_scaling" {
  type    = bool
  default = false
}

variable "min_count" {
  type    = number
  default = 1
}

variable "max_count" {
  type    = number
  default = 3
}

variable "tags" {
  type    = map(string)
  default = {}
}
