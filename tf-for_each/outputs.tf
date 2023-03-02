// Resource outputs
output "tst_vpc_subnet" {
  value       = google_compute_subnetwork.tst_vpc_subnet
  description = "The subnet resource being created"
}

output "tst_vpc_subnet01_id" {
  value       = google_compute_subnetwork.tst_vpc_subnet["fdn-tst-subnet-01"].id
  description = "The ID of the first subnet."
}

/*************************************************
  Output using for expression
*************************************************/
output "tst_vpc_subnet_ids" {
  value = [
    for instance in google_compute_subnetwork.tst_vpc_subnet :
    instance.id
  ]
  description = "The tuple of the IDs of the created subnets."
}