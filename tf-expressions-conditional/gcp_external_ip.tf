# Resource block to reserve regional External IP Address
resource "google_compute_address" "tst_eip" {
  count = var.reserve_public_ip == true ? 1 : 0

  project      = var.project_id
  name         = var.eip_name
  region       = var.resource_region
  address_type = "EXTERNAL"
  network_tier = "PREMIUM"
}