// Resource block to deploy subnetwork | Example of Implicit Dependency
resource "google_compute_subnetwork" "tst_vpc_subnet01" {
  name                     = var.subnet_name[0]
  ip_cidr_range            = var.subnet_cidr[0]
  region                   = var.default_region
  private_ip_google_access = true
  network                  = google_compute_network.tst_vpc.id
}

// Resource block to deploy subnetwork | Example of Explicit Dependency
resource "google_compute_subnetwork" "tst_vpc_subnet02" {
  name                     = var.subnet_name[1]
  ip_cidr_range            = var.subnet_cidr[1]
  region                   = var.default_region
  private_ip_google_access = true
  network                  = "projects/prj-tf-training/global/networks/fdn-tst-vpc-01"

  depends_on = [
    google_compute_network.tst_vpc
  ]
}