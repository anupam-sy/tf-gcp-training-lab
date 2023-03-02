// Resource block to reserve regional external IP address
resource "google_compute_address" "tst_eip" {
  provider     = google-beta
  project      = var.project_id
  name         = var.eip_name
  region       = var.default_region
  address_type = "EXTERNAL"
  network_tier = "PREMIUM"

  # labels arguments comes with google-beta
  labels = var.resource_labels
}