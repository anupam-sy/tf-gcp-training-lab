# Resource block to deploy Subnetwork
resource "google_compute_subnetwork" "tst_vpc_subnet" {
  count                    = length(var.subnet_name)
  name                     = var.subnet_name[count.index]
  ip_cidr_range            = var.subnet_cidr[count.index]
  region                   = var.resource_region
  private_ip_google_access = true
  network                  = google_compute_network.tst_vpc.id
}