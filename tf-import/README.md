# Terraform Import
This sub-project contains terraform code to understand the concept of `importing an existing infrastructure` to manage it using terraform.

- Terraform is able to import existing infrastructure. This allows you take resources you've created by some other means and bring it under Terraform management.
- Terraform import can only import resources into the state. Importing does not generate configuration.
- The terraform import command can only import one resource at a time. It cannot simultaneously import an entire collection of resources.

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
- https://developer.hashicorp.com/terraform/cli/import
- https://developer.hashicorp.com/terraform/cli/import/usage