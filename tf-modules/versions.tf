// Terraform block to configure terraform and provider version
terraform {
  required_version = "~> 1.3.6"

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.55.0"
    }
    google-beta = {
      source  = "hashicorp/google-beta"
      version = "~> 4.55.0"
    }
  }
}