# Resource specific outputs
# VPC output with all attributes
output "tst_vpc_all" {
  value = google_compute_network.tst_vpc
}

# VPC Network ID
output "tst_vpc_id" {
  value = google_compute_network.tst_vpc.id
}

# Password output
output "generated_pwd" {
  value     = random_id.sbx_password.hex
  sensitive = true
}