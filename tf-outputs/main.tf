// resource block to generate a random hex code for password
resource "random_id" "tst_password" {
  byte_length = 8
}

// Resource block to deploy vpc network
resource "google_compute_network" "tst_vpc" {
  project                         = var.project_id
  name                            = var.vpc_name
  routing_mode                    = "GLOBAL"
  auto_create_subnetworks         = var.auto_create_subnetworks
  delete_default_routes_on_create = var.delete_default_routes
}