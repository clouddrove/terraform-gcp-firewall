# ------------------------------------------------------------------------------
# Provider
# ------------------------------------------------------------------------------

provider "google" {
  project = "cloud-crew-testing"
  region  = var.gcp_region
  zone    = var.gcp_zone
}

# ------------------------------------------------------------------------------
# Module_for_vpc
# ------------------------------------------------------------------------------

module "vpc" {
  source  = "clouddrove/vpc/gcp"
  version = "1.0.0"

  name                           = "vpc"
  environment                    = "test"
  label_order                    = ["environment", "name"]
  google_compute_network_enabled = true
}

# ------------------------------------------------------------------------------
# Module_for_firewall
# ------------------------------------------------------------------------------

module "firewall" {
  source = "../"

  name                            = "test-firewall"
  module_enabled                  = true
  google_compute_firewall_enabled = true
  project_id                      = "clouddrove-1"
  network                         = module.vpc.vpc_id
  description                     = "Creates firewall rule targeting tagged instances."
  protocol                        = "TCP"
  ports                           = ["80", "4440", "443", "22"]
  source_ranges                   = ["0.0.0.0/0"]
  direction                       = "INGRESS"
  disabled                        = "false"
  destination_ranges              = ["10.0.0.0/24", "192.168.0.0/16"]
  source_service_accounts         = ["example@example.iam.gserviceaccount.com"]
  enable_target_service_accounts  = false
  target_service_accounts         = ["example@example.iam.gserviceaccount.com"]
  priority                        = 1000
}