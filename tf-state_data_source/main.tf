/*
1. The terraform_remote_state data source uses the latest state snapshot from a specified state backend to retrieve the root module output values from some other Terraform configuration.
2. You can use the terraform_remote_state data source without requiring or configuring a provider.
3. Although terraform_remote_state only exposes output values, its user must have access to the entire state snapshot, which often includes some sensitive information.

References: https://developer.hashicorp.com/terraform/language/state/remote-state-data
*/

// State data source block to fetch the output values from other tf configuration
data "terraform_remote_state" "state_data" {
  backend = "local"

  config = {
    path = "${path.module}/../tf-data_source/terraform.tfstate"
  }
}

locals {
  network_id = data.terraform_remote_state.state_data.outputs.tst_vpc_id
  subnet_id  = data.terraform_remote_state.state_data.outputs.tst_vpc_subnet_id
}

// Resource block to reserve static internal IP address in subnet
resource "google_compute_address" "webserver_iip" {
  project      = var.project_id
  name         = var.iip_name
  region       = var.default_region
  address_type = "INTERNAL"
  address      = "10.0.40.2"
  subnetwork   = local.subnet_id
}