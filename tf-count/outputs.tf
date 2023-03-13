// Resource outputs
output "tst_vpc_subnet_all" {
  description = "The VPC resource being created"
  value       = google_compute_subnetwork.tst_vpc_subnet
}

/*************************************************
  Output using for expression
*************************************************/
output "tst_vpc_subnet_ids_01" {
  description = "The IDs of the subnets being created."
  value = [
    for instance in google_compute_subnetwork.tst_vpc_subnet :
    instance.id
  ]
}

output "tst_vpc_subnet_details" {
  description = "The details of the subnets in key value pairs in the form - 'subnet name' as key and 'subnet id' as value."
  value = {
    for instance in google_compute_subnetwork.tst_vpc_subnet :
    instance.name => instance.id
  }
}

/*************************************************
  Output using splat expression
*************************************************/
output "tst_vpc_subnet_ids_02" {
  description = "The IDs of the subnets being created."
  value       = google_compute_subnetwork.tst_vpc_subnet[*].id
}