# Terraform - Dynamic Block
This sub-project contains terraform code to understand the concept of "Dynamic Block" with the help of VPC and Subnet deployment on Google Public Cloud.

## Prerequisites:
All the prerequisites mentioned in top level readme file must be fulfilled for successful execution of code.

## Usage:
To learn and notice the concept implementation, read below.

-   Dynamic blocks can be used in situations where you want to produce nested blocks.

-   There are two resource blocks present under `gcp_subnetwork.tf` to deploy subnets on GCP. Check the ways to pass the "secondary_ip_range" in both the blocks, second way demonstrates the implementation of dynamic block.

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