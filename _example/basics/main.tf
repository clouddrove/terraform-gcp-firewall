provider "google" {
  region = "us-central1"
}

module "firewall_rules" {
    source = "./../../"
    name = "module-test"
    ports = ["90", "30"]
    priority = "2000"
    direction = "EGRESS"
}