/*
Steps to import an existing subnetwork resource:

1. Create a dummy resource block for it in your configuration, establishing the name by which it will be known to Terraform.
Note: You can leave the body of the resource block blank for now and return to fill it in once the resource is imported.

2. Import the resource using below syntax:
> terraform import ADDRESS ID

Example:
> terraform import google_compute_subnetwork.tst_subnet projects/prj-tf-training/regions/us-central1/subnetworks/subnet-01
*/

// Dummy resource block to import and manage an existing subnetwork
resource "google_compute_subnetwork" "tst_subnet" {

}

/*
  name          = "subnet-01"
  ip_cidr_range = "10.0.10.0/24"
  network       = google_compute_network.tst_vpc.id
*/