# ------------------------------------------------------------------------------
# Variables
# ------------------------------------------------------------------------------

variable "environment" {
  type        = string
  default     = ""
  description = "Environment (e.g. `prod`, `dev`, `staging`)."
}

variable "label_order" {
  type        = list(any)
  default     = []
  description = "Label order, e.g. sequence of application name and environment `name`,`environment`,'attribute' [`webserver`,`qa`,`devops`,`public`,]."
}

variable "name" {
  type        = string
  default     = ""
  description = "Name of the resource. Provided by the client when the resource is created."
}

variable "google_compute_firewall_enabled" {
  type        = bool
  default     = true
  description = "Flag to enable or disable the creation of Google Compute Engine firewall rules. Set to true to enable creation, false to disable."
}

variable "module_enabled" {
  type        = bool
  default     = true
  description = "Flag to enable or disable the entire module. Set to true to enable the module, false to disable."
}

variable "project_id" {
  type        = string
  default     = ""
  description = "The project in which the resource belongs. If it is not provided, the provider project is used."
}

variable "description" {
  type        = string
  default     = "Managed by clouddrove"
  description = "Creates Firewall rule targetting tagged instances"
}

variable "network" {
  type        = string
  default     = ""
  description = "The name or self_link of the network to attach this firewall to."
}

variable "allowed_traffic" {
  description = "List of allowed traffic configurations"
  type = list(object({
    protocol = string
    ports    = list(string)
  }))
}

variable "source_ranges" {
  type        = list(string)
  default     = ["0.0.0.0/0"]
  description = "List of IP ranges to allow access from. By default, allows access from any IP address (0.0.0.0/0)."
}

variable "direction" {
  description = "The direction of traffic flow (INGRESS or EGRESS)"
  type        = string
  default     = "INGRESS"
}

variable "disabled" {
  description = "Whether the firewall rule is disabled (true/false)"
  type        = bool
  default     = false
}

variable "destination_ranges" {
  description = "List of destination IP ranges"
  type        = list(string)
  default     = []
}

variable "source_service_accounts" {
  description = "List of source service accounts for filtering traffic"
  type        = list(string)
  default     = []
}

variable "target_service_accounts" {
  description = "List of target service accounts for filtering traffic, If we don't specify this, it will automatically include all instances in the network."
  type        = list(string)
  default     = []
}

variable "priority" {
  description = "Priority for the firewall rule"
  type        = number
  default     = 65535

}

variable "enable_target_service_accounts" {
  description = "Flag to enable or disable the use of target service accounts."
  type        = bool
  default     = false
}
