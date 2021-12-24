# Resource specific output
# Output with all attributes
output "tst_vpc_subnet_all" {
  value = google_compute_subnetwork.tst_vpc_subnet
}

# One subnet ID with key
output "tst_vpc_subnet01_id" {
  value = google_compute_subnetwork.tst_vpc_subnet["fdn-tst-subnet-01"].id
}

# Output using for expression
output "tst_vpc_subnet_ids" {
  value = [
    for instance in google_compute_subnetwork.tst_vpc_subnet :
    instance.id
  ]
}