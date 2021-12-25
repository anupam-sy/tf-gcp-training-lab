# Instantiate a time object to set the creation time label
resource "time_static" "created" {}

# Locals block to transform and construct values
locals {
  labels = merge(var.resource_labels,
    {
      "gcp_region" : var.resource_region,
      "creation_time" : replace(split("T", time_static.created.rfc3339)[0], "-", ""),
    }
  )
}

# Resource block to deploy Cloud Storage Bucket
resource "google_storage_bucket" "tst_storage_bucket" {
  project = var.project_id

  name                        = var.gcs_bucket_name
  location                    = var.resource_region
  storage_class               = "STANDARD"
  force_destroy               = true
  uniform_bucket_level_access = true

  versioning {
    enabled = true
  }

  labels = local.labels
}