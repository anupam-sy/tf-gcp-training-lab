// Resource outputs
output "tst_vpc_subnet" {
  value       = google_compute_subnetwork.tst_vpc_subnet
  description = "The subnet resource being created"
}

output "tst_vpc_subnet_01_id" {
  description = "The ID of the first subnet being created."
  value       = google_compute_subnetwork.tst_vpc_subnet["fdn-tst-subnet-01"].id
}

/*************************************************
  Output using for expression
*************************************************/
output "tst_vpc_subnet_ids" {
  description = "The IDs of the subnets being created."
  value = [
    for instance in google_compute_subnetwork.tst_vpc_subnet :
    instance.id
  ]
}

output "tst_eip_ids" {
  description = "The IDs of the external IPs being reserved."
  value = [
    for instance in google_compute_address.tst_eip :
    instance.id
  ]
}