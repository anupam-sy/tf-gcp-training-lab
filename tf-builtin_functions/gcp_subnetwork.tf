/*************************************************
  Example of Collection Functions
*************************************************/

# Locals block to transform and construct values
locals {
  count_value = length(var.subnet_name)
}

// Resource block to deploy subnetworks
resource "google_compute_subnetwork" "tst_vpc_subnet" {
  count = local.count_value

  name                     = element(var.subnet_name, count.index)
  ip_cidr_range            = element(var.subnet_cidr, count.index)
  region                   = var.default_region
  private_ip_google_access = true
  network                  = google_compute_network.tst_vpc.id
}