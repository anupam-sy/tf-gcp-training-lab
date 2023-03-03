// Resource block to deploy VPC Network
resource "google_compute_network" "tst_vpc" {
  project                         = var.project_id
  name                            = var.vpc_name
  routing_mode                    = "GLOBAL"
  auto_create_subnetworks         = var.auto_create_subnetworks
  delete_default_routes_on_create = var.delete_default_routes

  lifecycle {
    create_before_destroy = true
    ignore_changes = [
      routing_mode
    ]
    prevent_destroy = true
  }
}