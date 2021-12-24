/*
Prerequisites:
1. Resource must exist in order to fetch a particular attribute.
2. Check the provider documentation to know what attributes can be fetched.
*/

# Data block to get the attributes of VPC resource
data "google_compute_network" "tst_vpc" {
  project = var.project_id
  name    = var.vpc_name
}

# Data source output
output "tst_vpc_id" {
  value = data.google_compute_network.tst_vpc.id
}