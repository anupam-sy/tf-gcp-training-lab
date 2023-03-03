/*************************************************
  Resource block to deploy VPC Network
*************************************************/

resource "google_compute_network" "network" {
  name                            = var.vpc_name
  description                     = var.description
  project                         = var.project_id
  routing_mode                    = var.routing_mode
  auto_create_subnetworks         = var.auto_create_subnetworks
  delete_default_routes_on_create = var.delete_default_routes_on_create
}