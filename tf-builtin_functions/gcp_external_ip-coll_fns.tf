# Locals block to transform and construct values
locals {
  ext_ips = {
    for instance in var.ext_ips :
    "${instance.eip_name}" => instance
  }
}

# Resource block to reserve regional External IP Address
resource "google_compute_address" "tst_eip" {
  project  = var.project_id
  for_each = local.ext_ips

  name         = each.value.eip_name
  description  = lookup(each.value, "eip_description", null)
  region       = var.resource_region
  address_type = "EXTERNAL"
  network_tier = lookup(each.value, "eip_network_tier", "STANDARD")
}