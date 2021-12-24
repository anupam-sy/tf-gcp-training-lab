# GCP | VPC Module
This is the module to deploy VPC resource on Google Cloud Platform.

## Prerequisites
This module is meant for use with Terraform 1.0.0

## Example Usage

```
module "example-vpc" {
  source = "./modules/terraform-gcp-vpc"

  vpc_name                        = "example-network"
  project_id                      = "xyz-54321"
  routing_mode                    = "GLOBAL"
  auto_create_subnetworks         = false
  delete_default_routes_on_create = false
}
```

## Requirements

### Terraform plugins

- [Terraform] 1.0.0
- [terraform-provider-google] 3.60.0
- [terraform-provider-google-beta] 3.60.0