# Resource outputs
output "tst_vpc_id" {
  value       = data.google_compute_network.tst_vpc.id
  description = "The ID of the existing VPC network."
}

output "tst_vpc_subnet_id" {
  value       = google_compute_subnetwork.tst_vpc_subnet.id
  description = "The ID of the created subnet."
}