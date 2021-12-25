/*
1. Create the GCS Bucket using Gcloud SDK / Cloud Shell:
> gcloud config set project PROJECT_ID
> gsutil mb -c standard -l eu gs://tfstates-hcl-internal-training

2. Set the Bucket versioning.
> gsutil versioning set on gs://tfstates-hcl-internal-training
*/

# Configure Google Cloud Storage (GCS) Backend for Google Cloud Provider
terraform {
  backend "gcs" {
    bucket      = "tfstates-hcl-internal-training"
    prefix      = "workload/tst"
    credentials = "../credentials/tf_mgcp_svc_account.json"
  }
}