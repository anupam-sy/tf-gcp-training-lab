# Provider block to configure Google Provider 
provider "google" {
  project     = var.project_id
  region      = var.resource_region
  credentials = file("./credentials/tf_mgcp_svc_account.json")
}