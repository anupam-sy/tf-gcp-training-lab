# Terraform GCS Backend
This sub-project contains terraform code to understand the implementation of GCS backend with the help of resource deployment on Google Cloud Platform.

- Backends defines where terraform stores its state. Terraform uses this persisted state data to keep track of the resources it manages.
- By default, Terraform uses a backend called local, which stores state as a local file on disk. You can also configure one of the built-in backends provided by terraform.
- While configuring the backend, you can omit the required arguments of backend block (known as partial backend configuration) and pass using a seperate file (ex: config.gcs.tfbackend).

## Prerequisites
All the prerequisites mentioned in top level README file must be fulfilled for successful execution of code.

## TF Code Execution
To execute the terraform code, go to command prompt and then run the following commands:

-   [Required] `terraform init` # To initialize the terraform working directory.
-   [Optional] `terraform validate` # To validate the terraform configuration.
-   [Optional] `terraform fmt` # To format the terraform configuration to a canonical format and style.
-   [Optional] `terraform plan` # To create an execution plan for terraform configuration files.
-   [Required] `terraform apply -auto-approve` # To execute the actions proposed in a terraform plan to create, update, or destroy infrastructure.
-   [Optional] `terraform destroy -auto-approve` # To destroy the created infrastructure. Specific resources can be destroyed using resource targetting.

## References
https://developer.hashicorp.com/terraform/language/settings/backends/configuration