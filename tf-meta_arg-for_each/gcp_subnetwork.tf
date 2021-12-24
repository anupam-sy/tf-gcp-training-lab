# Resource block to deploy SubNetworks
resource "google_compute_subnetwork" "tst_vpc_subnet" {
  for_each                 = var.subnet_data
  name                     = each.key
  ip_cidr_range            = each.value
  region                   = var.resource_region
  private_ip_google_access = true
  network                  = google_compute_network.tst_vpc.id
}