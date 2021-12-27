# Terraform - Output Block
This sub-project contains terraform code to understand the concept of `Output Block` and its optional arguments with the help of resource deployment on Google Public Cloud and Random ID generation.

## Prerequisites:
All the prerequisites mentioned in top level readme file must be fulfilled for successful execution of code.

## Usage:
To learn and understand the concept implementation, read below.

-   Output values make information available on the command line about your infrastructure, and can expose information for other Terraform configurations to use.

-   There are certain output blocks present under `outputs.tf` with different implementations.

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