# Terraform - OSS Workspaces Implementation
This sub-project contains terraform code to understand the concept of `terraform workspaces` with the help of resource deployment on Google Cloud Platform.

## Prerequisites:
All the prerequisites mentioned in top level readme file must be fulfilled for successful execution of code.

## Usage:
To learn and understand the concept implementation, read below.

-   In Terraform CLI, workspaces are separate instances of state data that can be used from the same working directory. Terraform Cloud and Terraform CLI both have features called "workspaces," but they're slightly different. Terraform Cloud's workspaces behave more like completely separate working directories.

-   CLI workspaces may not be useful in scenarios where you are using different backend for different environments, each with different credentials and access controls. Named workspaces are not a suitable isolation mechanism in such scenarios.

-   To test the concept of workspaces, a folder "tfvars" is created to store the variable definition files for different environments. Execute the terraform code with auto-loaded variable definition file "terraform.tfvars" for default workspace and create new workspaces for dev and prd envs and deploy the infra with their variable definition files stored under tfvars folder.

## Terraform Execution:
To run the terraform code, execute below commands.

-   [Required] `terraform init`
    -   It initializes the working directory containing terraform configuration files.

-   [Optional] `terraform plan`
    -   It creates an execution plan.

-   [Required] `terraform apply -auto-approve`
    -   It executes the actions proposed in a terraform plan.

-   [Optional] `terraform destroy -auto-approve`
    -   The terraform destroy command is used to destory the resources defined in your terraform configuration. To delete the specific resource, use the "target" option with destroy command.