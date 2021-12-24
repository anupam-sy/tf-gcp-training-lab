# Terraform block to configure Terraform and Provider Version
terraform {
  required_version = "~> 1.0.0"

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 3.60.0"
    }
  }
}