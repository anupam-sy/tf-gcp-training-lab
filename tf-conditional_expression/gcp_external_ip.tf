// Resource block to reserve regional external IP address
resource "google_compute_address" "tst_eip" {
  count = var.reserve_eip ? 1 : 0

  project      = var.project_id
  name         = var.eip_name
  region       = var.default_region
  address_type = "EXTERNAL"
  network_tier = "PREMIUM"
}