module "labels" {
  source  = "clouddrove/labels/gcp"
  version = "1.0.0"

  name        = var.name
  environment = var.environment
  label_order = var.label_order
}
# ------------------------------------------------------------------------------
# resource_to_create_GCP_compute_firewall
# ------------------------------------------------------------------------------

resource "google_compute_firewall" "rules" {
  count                   = var.google_compute_firewall_enabled && var.module_enabled ? 1 : 0
  project                 = var.project_id
  name                    = module.labels.id
  network                 = var.network
  description             = var.description
  direction               = var.direction
  source_ranges           = var.source_ranges
  destination_ranges      = var.destination_ranges
  source_service_accounts = var.source_service_accounts
  target_service_accounts = var.enable_target_service_accounts ? var.target_service_accounts : []
  priority                = var.priority
  disabled                = var.disabled

  allow {
    protocol = var.protocol
    ports    = var.ports
  }
}

