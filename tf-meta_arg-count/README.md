# Terraform - Count Meta-Argument
This sub-project contains terraform code to understand the concept of `meta-argument count, for expression and splat expression` with the help of resource deployment on Google Cloud Platform.

## Prerequisites:
All the prerequisites mentioned in top level readme file must be fulfilled for successful execution of code.

## Usage:
To learn and understand the concept implementation, read below.

-   The count meta-argument accepts a whole number, and creates that many instances of the resource or module.

-   To test the concept of meta-argument count, check the subnetwork deployment configuration file `gcp_subnetwork.tf`. In that, Length function is used to generate the final whole number in order to deploy that many subnetworks. 

-   Under `outputs.tf`, different usecases of "for and splat" expressions are demonstrated to generate transformed output values.

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