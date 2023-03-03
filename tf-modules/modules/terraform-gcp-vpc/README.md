# Terraform VPC Module
This module creates a VPC network resource on Google Cloud Platform.

## Prerequisites
Below prerequisites must be fulfilled for successful execution of terraform concept code sets.

### Software Requirement
Resources in this repository are meant to use with Terraform 1.3.6 (check the terraform version using: `terraform version`). If you don't have the compatible version, download it from official Terraform repository.

-   [Terraform](https://www.terraform.io/downloads.html) >= 1.3.6

> **Note:** 
> See [Installation-Guide](https://gist.github.com/anupam-sy/7458df6506e8e3cfb28c0ff56fab546a) on how to install Terraform.

### Project and API Requirement
In order to deploy the VPC using this module, you must activate the Compute Engine API (compute.googleapis.com) on the project.

## Example Usage
```
module "example-vpc" {
  source = "./modules/terraform-gcp-vpc"

  vpc_name                        = "example-network"
  project_id                      = "project-03022023"
  routing_mode                    = "GLOBAL"
  auto_create_subnetworks         = false
  delete_default_routes_on_create = false
}
```