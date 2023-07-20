// Resources output
output "tst_vpc_id" {
  value       = google_compute_network.tst_vpc.id
  description = "The ID of the created VPC network."
}
