/*************************************************
  Example of String Functions
*************************************************/

// Locals block to transform and construct values
locals {
  final_vpc_name = join("", ["fdn-", var.vpc_name])
  final_vpc_desc = trimspace(var.vpc_description)
}

// Resource block to deploy vpc network
resource "google_compute_network" "tst_vpc" {
  project                         = var.project_id
  name                            = local.final_vpc_name
  description                     = local.final_vpc_desc
  routing_mode                    = "GLOBAL"
  auto_create_subnetworks         = var.auto_create_subnetworks
  delete_default_routes_on_create = var.delete_default_routes
}