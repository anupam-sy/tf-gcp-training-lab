# Provider block to configure Google Provider 
provider "google" {
  project     = var.project_id
  region      = var.resource_region
  credentials = file("${path.module}/../credentials/tf_mgcp_svc_account.json")
}

# Provider block to configure Google Beta Provider 
provider "google-beta" {
  project     = var.project_id
  region      = var.resource_region
  credentials = file("${path.module}/../credentials/tf_mgcp_svc_account.json")
}