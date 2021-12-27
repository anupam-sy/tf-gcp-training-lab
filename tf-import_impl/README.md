# Terraform - Import Implementation
This sub-project contains terraform code to understand the concept of `importing an existing infrastructure` to manage it using terraform.

## Prerequisites:
All the prerequisites mentioned in top level readme file must be fulfilled for successful execution of code.

## Usage:
To learn and understand the concept implementation, read below.

-   Terraform is able to import existing infrastructure. This allows you take resources you've created by some other means and bring it under Terraform management.

-   To test the concept of terraform import, first create a VPC using terraform code (make sure to disable the `gcp_subnetwork.tf` file during first run) and then create a subnet manually inside it. Post that, Import the subnet using a dummy resource block.

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