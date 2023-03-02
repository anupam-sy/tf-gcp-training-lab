// Generate a random id to be associated as suffix in bucket name
resource "random_id" "suffix" {
  byte_length = 2
}

// Resource block to deploy google cloud storage bucket
resource "google_storage_bucket" "tst_storage_bucket" {
  project                     = var.project_id
  name                        = "${var.gcs_bucket_name}-${random_id.suffix.hex}"
  location                    = var.default_region
  storage_class               = "STANDARD"
  force_destroy               = true
  uniform_bucket_level_access = true

  versioning {
    enabled = true
  }
}