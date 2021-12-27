# Terraform Code Sets
This repository contains Terraform code sets for learning and testing different terraform concepts.

## Prerequisites:
Below prerequisites must be fulfilled for successfull execution of code sets.

### Software Requirement:
Resources in this repository are meant for use with Terraform 1.0.0 (Check the version using `terraform --version`). If you don't have the compatible version, download it from official Terraform repository.

-   [gcloud sdk](https://cloud.google.com/sdk/install) >= 332.0.0
-   [Terraform](https://www.terraform.io/downloads.html) >= 1.0.0
-   [terraform-provider-google] plugin = 3.60.0
-   [terraform-provider-google-beta] plugin = 3.60.0
-   [terraform-provider-random] plugin = 3.0.0

### Permissions Requirement:
In order to execute these sub-projects, you must have a Service Account with the following roles. Access can be more fine-grained to follow Principle of least privilege (PoLP).

- `roles/resourcemanager.projectOwner` on all the projects where you want to house your resources using service account's email.
- `roles/storage.admin` on the project housing terraform state files.

### Project API Requirement:
In order to use the services, required APIs must be enabled before resource deployment. You can either enable these using terraform or using gcloud command. Sample examples below -

* terraform code snip to enable Service APIs
```
    # locals block to define required service APIs
    locals {
    googleapis = [
        "compute.googleapis.com",
        "cloudresourcemanager.googleapis.com",
        "iam.googleapis.com"
    ]
    }

    # resource block to enable required service APIs
    resource "google_project_service" "apis" {
    for_each = toset(local.googleapis)

    project                = "your_project_id"
    service                = each.key
    disable_on_destroy     = false
    }
```

* gcloud command to enable Service APIs
```
	gcloud services enable servicenetworking.googleapis.com \
	    cloudresourcemanager.googleapis.com \
	    compute.googleapis.com \
	    iam.googleapis.com
```

### Remote Backend Setup:
To use a remote backend, create a GCS Bucket and set the versioning. Use below gcloud commands.

    gcloud config set project PROJECT_ID
	gsutil mb -c standard -l eu gs://bucket-name
	gsutil versioning set on gs://bucket-name

## Execution:
To execute the Terraform code, go to command prompt, change the directory to your terraform configuration directory and then execute the following commands:

-   [Required] `terraform init`
    -   To initialize the terraform with remote backend, use "-backend-config=PATH" flag partial backend configuration. To specify a single key/value pair, use the -backend-config="KEY=VALUE" option when running terraform init.

-   [Optional] `terraform validate`
    -   To check whether a configuration is syntactically valid and internally consistent, regardless of any provided variables or existing state.

-   [Optional] `terraform fmt`
    -   The terraform fmt command is used to rewrite Terraform configuration files to a canonical format and style. use "-recursive" flag to format the code inside all folders.

-   [Optional] `terraform plan -var-file="resource.tfvars" -out=tfplan`
    -   It creates an execution plan. You can use the optional -out=FILE option to save the generated plan to a file on disk, which you can later execute by passing the file to terraform apply as an extra argument.

-   [Required] `terraform apply -var-file="resource.tfvars" -auto-approve`
    -   It executes the actions proposed in a Terraform plan. In the default case, with no saved plan file, Terraform will prompt you to approve the plan before taking the described actions, unless you override that prompt using the -auto-approve option. Terraform ignores the -auto-approve flag when you pass a previously-saved plan file, because Terraform considers you passing the plan file as the approval.

-   [Optional] `terraform destroy -target="resource_type.resource_name"`
    -   The terraform destroy command is used to destory the resources defined in your Terraform configuration. To delete the specific resource, use the "target" option with destroy command.

## Reference:
> https://www.terraform.io/cli
> https://www.terraform.io/language
> https://github.com/GoogleCloudPlatform/solutions-terraform-cloudbuild-gitops