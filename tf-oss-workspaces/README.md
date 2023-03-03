# Terraform OSS Workspaces
This sub-project contains terraform code to understand the concept of `terraform workspaces` with the help of resource deployment on Google Cloud Platform.

- In Terraform CLI, workspaces are separate instances of state data that can be used from the same working directory. 
- Terraform Cloud and Terraform CLI both have the feature called "workspaces" but they're slightly different. Terraform Cloud's workspaces behave more like completely separate working directories.
- CLI workspaces may not be useful in scenarios where you are using different backend for different environments, each with different credentials and access controls. Named workspaces are not a suitable isolation mechanism in such scenarios.

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
- https://developer.hashicorp.com/terraform/cli/workspaces
- https://developer.hashicorp.com/terraform/cli/commands/workspace