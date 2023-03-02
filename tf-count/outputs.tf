# Resource outputs
output "tst_vpc_subnet_all" {
  value       = google_compute_subnetwork.tst_vpc_subnet
  description = "The VPC resource being created"
}

/*************************************************
  Output using for expression
*************************************************/
output "tst_vpc_subnet_tuple1" {
  value = [
    for instance in google_compute_subnetwork.tst_vpc_subnet :
    instance.id
  ]
  description = "The tuple of the ID of the subnets."
}

output "tst_vpc_subnet_object" {
  value = {
    for instance in google_compute_subnetwork.tst_vpc_subnet :
    instance.name => instance.id
  }
  description = "The object of the key value pair 'subnet name and subnet id' of the subnets."
}

/*************************************************
  Output using splat expression
*************************************************/
output "tst_vpc_subnet_tuple2" {
  value       = google_compute_subnetwork.tst_vpc_subnet[*].id
  description = "The tuple of the ID of the subnets."
}