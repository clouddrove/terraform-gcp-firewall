output "id" {
  value       = module.firewall.*.id
  description = "Name of the resource. Provided by the client when the resource is created."
}