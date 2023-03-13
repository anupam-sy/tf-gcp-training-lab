// Resource block to reserve regional external IP address
resource "google_compute_address" "tst_eip" {
  for_each = toset(var.eip_names)

  project      = var.project_id
  name         = each.value # note: each.key and each.value are the same for a set
  region       = var.default_region
  address_type = "EXTERNAL"
  network_tier = "PREMIUM"
}