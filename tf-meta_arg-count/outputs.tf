# Resource specific output
# Output with all attributes
output "tst_vpc_subnet_all" {
  value = google_compute_subnetwork.tst_vpc_subnet
}

# Output using splat expression
output "tst_vpc_subnet_ids_01" {
  value = google_compute_subnetwork.tst_vpc_subnet[*].id
}

# Output using for expression
output "tst_vpc_subnet_ids_02" {
  value = [
    for instance in google_compute_subnetwork.tst_vpc_subnet :
    instance.id
  ]
}

# Output using for expression
output "tst_vpc_subnet_names_with_ids" {
  value = {
    for instance in google_compute_subnetwork.tst_vpc_subnet :
    instance.name => instance.id
  }
}