// Terraform block to configure terraform and provider version
terraform {
  required_version = "~> 1.8.0"

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.33.0"
    }
    google-beta = {
      source  = "hashicorp/google-beta"
      version = "~> 5.33.0"
    }
  }
}
