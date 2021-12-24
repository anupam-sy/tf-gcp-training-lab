# Module block to deploy VPC Network
module "tst_vpc" {
  source = "./modules/terraform-gcp-vpc"

  vpc_name                        = var.vpc_name
  description                     = "Test VPC"
  project_id                      = var.project_id
  routing_mode                    = "GLOBAL"
  auto_create_subnetworks         = var.auto_create
  delete_default_routes_on_create = var.delete_default_routes
}

# Resource specific output
output "tst_vpc_id" {
  value = module.tst_vpc.exports.id
}