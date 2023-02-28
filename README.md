# Terraform Concept Codes
This repository contains terraform concept code sets for learning and testing different terraform concepts.

## Prerequisites
Below prerequisites must be fulfilled for successful execution of terraform concept code sets.

### Software Requirement
Resources in this repository are meant for use with Terraform 1.0.0 (check the version using `terraform version`). If you don't have the compatible version, download it from official Terraform repository.

-   [Cloud SDK](https://cloud.google.com/sdk/install) >= 414.0.0
-   [Terraform](https://www.terraform.io/downloads.html) >= 1.3.6

### Permissions Requirement
**Option-01:** If you are using terraform on your workstation, It is recommended that you authenticate using User Application Default Credentials ("ADCs") as a primary authentication method. You can enable ADCs by running the command.

```
    gcloud auth application-default login
```

**Option-02:** You can create a Service Account and reference service account keyfile in providers configuration block.

```
    provider "google" {
        credentials = file("./credentials/service_account_key.json")
    }
```

Whatever option you choose, make sure to provide the following roles to selected principle (User/ServiceAccount).
- `roles/resourcemanager.projectOwner` on all the projects where you want to house your resources using service account's email.
- `roles/storage.admin` on the GCS bucket housing terraform state files. This role is required in case of using GCS backend.

**Note:** 
- Access can be more fine-grained to follow the principle of least privilege (PoLP).
- You can explore the other authentication options by reviewing the references and use the best suited for your usecase.

### Project API Requirement
In order to use the google cloud services, respective service API(s) must be enabled before resource deployment. You can either enable these using terraform or using gcloud command. Sample examples are mentioned below -

1. Use terraform code snip to enable google cloud service APIs
```
    // Locals block to define required service APIs
    locals {
    googleapis = [
        "compute.googleapis.com",
        "cloudresourcemanager.googleapis.com",
        "iam.googleapis.com"
        ]
    }

    // Resource block to enable required service APIs
    resource "google_project_service" "apis" {
    for_each = toset(local.googleapis)

    project                = "project_id"
    service                = each.key
    disable_on_destroy     = false
    }
```

2. Use gcloud command to enable google cloud service APIs
```
	gcloud services enable servicenetworking.googleapis.com \
	    cloudresourcemanager.googleapis.com \
	    compute.googleapis.com \
	    iam.googleapis.com
```

### Remote Backend Setup
For local backend, terraform state file is stored locally in the current working directory. To use a remote backend (to enable the collaboration of other team members), create a google cloud storage bucket and enable the versioning. Use below gcloud commands to created and set up gcs backend bucket.

```
    gcloud config set project PROJECT_ID
	gsutil mb -c standard -l eu gs://bucket-name
	gsutil versioning set on gs://bucket-name
```

## Execution
To execute the Terraform code, go to command prompt and then run the following commands:

-   [Required] `terraform init`
-   [Optional] `terraform validate`
-   [Optional] `terraform fmt`
-   [Optional] `terraform plan`
-   [Required] `terraform apply -auto-approve`

## Reference
- https://www.terraform.io/cli
- https://www.terraform.io/language
- https://registry.terraform.io/providers/hashicorp/google/latest/docs/guides/provider_reference