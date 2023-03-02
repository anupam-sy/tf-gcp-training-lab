// Resource outputs
output "webserver_iip_address" {
  value       = google_compute_address.webserver_iip.address
  description = "The address of the reserved internal ip address."
}