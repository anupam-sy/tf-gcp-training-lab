/*************************************************
  Example of Collection Functions
*************************************************/

// Locals block to transform and construct values
locals {
  ext_ips = {
    for instance in var.ext_ips :
    "${instance.eip_name}" => instance
  }

  labels = merge(var.resource_labels,
    {
      gcp_region    = var.default_region,
      creation_time = replace(split("T", time_static.created.rfc3339)[0], "-", ""),
    }
  )
}

// Instantiate a time object to set the creation time label
resource "time_static" "created" {}

// Resource block to reserve regional External IP Address
resource "google_compute_address" "tst_eip" {
  for_each = local.ext_ips

  provider     = google-beta
  project      = var.project_id
  name         = each.value.eip_name
  description  = lookup(each.value, "eip_description", null)
  region       = var.default_region
  address_type = "EXTERNAL"
  network_tier = lookup(each.value, "eip_network_tier", "STANDARD")
  labels       = local.labels
}