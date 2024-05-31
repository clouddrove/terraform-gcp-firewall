variable "project_id" {
  description = "The Project ID to host network"
  default     = "virtual-voyage-423511-d7"
}

variable "name" {
    type = string
    default = "ssh"
}

variable "vpc_network_name" {
  description = "Network name"
  default     = "virtual-voyage"
}

variable "priority" {
  type    = string
  default = "1000"
}

variable "source_ranges" {
  type    = list(string)
  default = ["0.0.0.0/0"]
}

variable "destination_ranges" {
  type    = list(string)
  default = [""]
}

variable "target_tags" {
  type    = list(string)
  default = [""]
}

variable "source_service_accounts" {
  type    = bool
  default = false
}

variable "target_service_accounts" {
  type    = bool
  default = false
}

variable "disabled" {
  type    = bool
  default = false
}

variable "direction" {
  type    = string
  default = "INGRESS"
}

variable "protocol" {
  type    = string
  default = "tcp"
}

variable "ports" {
  type    = list(string)
  default = ["50"]
}