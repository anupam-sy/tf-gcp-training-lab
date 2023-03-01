// Resource outputs
output "tst_vpc" {
  value       = google_compute_network.tst_vpc
  description = "The VPC resource being created"
}

output "tst_vpc_id" {
  value       = google_compute_network.tst_vpc.id
  description = "The ID of the VPC being created"
}

output "generated_value" {
  value       = random_id.tst_password.hex
  description = "The value of the generated random value."
  sensitive   = true
}