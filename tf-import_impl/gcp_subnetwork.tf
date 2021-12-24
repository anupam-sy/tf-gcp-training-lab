/*
Steps to import an existing subnetwork:
1. Create a dummy resource block like below.
2. Import the resource using below syntax:
  > terraform import ADDRESS ID
Example:
  > terraform import google_compute_subnetwork.tst_subnet_imp projects/tf-training-anupam/regions/us-central1/subnetworks/subnet-01
*/

# Dummy resource block to import and manage an existing subnetwork
resource "google_compute_subnetwork" "tst_subnet_imp" {

}

/*
  name          = "subnet-01"
  ip_cidr_range = "10.0.10.0/24"
  network       = google_compute_network.tst_vpc.id
*/