# Terraform - Module Implemenation
This sub-project contains terraform code to understand the concept of `module implementation` with the help of resource deployment on Google Cloud Platform.

## Prerequisites:
All the prerequisites mentioned in top level readme file must be fulfilled for successful execution of code.

## Usage:
To learn and understand the concept implementation, read below.

-   Modules are containers for multiple resources that are used together. A module consists of a collection of .tf and/or .tf.json files kept together in a directory. Modules are the main way to package and reuse resource configurations with Terraform.

-   To test the concept of module, a module is created with the name `terraform-gcp-vpc` and stored locally under modules folder. This module is called using `gcp_network.tf` to deploy vpc network on google cloud.

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