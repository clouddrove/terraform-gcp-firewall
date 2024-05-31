resource "google_compute_firewall" "allow-ping" {
  name                    = var.name
  network                 = var.vpc_network_name
  project                 = var.project_id

  allow {
    protocol              = var.protocol
    ports                 = var.ports
  }
  
  priority                = var.priority
  source_ranges           = var.source_ranges
  # destination_ranges      = var.destination_ranges
  # target_tags             = var.target_tags
  # source_service_accounts = var.source_service_accounts
  # target_service_accounts = var.target_service_accounts
  disabled                = var.disabled
  direction               = var.direction
}