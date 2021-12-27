# Terraform - Built-In Functions
This sub-project contains terraform code to understand the concept of multiple `built-in functions` with the help of resource deployment on Google Cloud Platform.

## Prerequisites:
All the prerequisites mentioned in top level readme file must be fulfilled for successful execution of code.

## Usage:
To learn and understand the concept implementation, read below.

-   The Terraform language includes a number of built-in functions that you can call to transform and combine values. The Terraform language does not support user-defined functions, and so only the functions built in to the language are available for use.

-   There are multiple resource configuration files in this sub-project, which has different string and collection functions. Review all the configuration files for understanding and usecases of builtin functions like length, join, trimspace, element, lookup etc.

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