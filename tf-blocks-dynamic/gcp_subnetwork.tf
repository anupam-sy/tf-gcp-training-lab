# Locals block to transform and construct values
locals {
  final_vpc_id = google_compute_network.tst_vpc.id
}

# Resource block to deploy SubNetwork 01
resource "google_compute_subnetwork" "tst_vpc_subnet01" {
  name                     = var.subnet_name[0]
  ip_cidr_range            = var.subnet_cidr[0]
  region                   = var.resource_region
  private_ip_google_access = true
  network                  = local.final_vpc_id

  secondary_ip_range {
    range_name    = "subnet01-sr01"
    ip_cidr_range = "10.0.50.0/24"
  }
  secondary_ip_range {
    range_name    = "subnet01-sr02"
    ip_cidr_range = "10.0.51.0/24"
  }
}

# Resource block to deploy SubNetwork 02
resource "google_compute_subnetwork" "tst_vpc_subnet02" {
  name                     = var.subnet_name[1]
  ip_cidr_range            = var.subnet_cidr[1]
  region                   = var.resource_region
  private_ip_google_access = true
  network                  = local.final_vpc_id

  dynamic "secondary_ip_range" {
    for_each = var.subnet02_secranges
    iterator = each
    content {
      range_name    = each.value["name"]
      ip_cidr_range = each.value["ipcidr"]
    }
  }
}