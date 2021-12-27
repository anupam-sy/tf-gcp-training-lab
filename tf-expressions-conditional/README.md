# Terraform - Conditional Expression
This sub-project contains terraform code to understand the concept of `conditional expression` with the help of resource deployment on Google Cloud Platform.

## Prerequisites:
All the prerequisites mentioned in top level readme file must be fulfilled for successful execution of code.

## Usage:
To learn and understand the concept implementation, read below.

-   A conditional expression uses the value of a boolean expression to select one of two values.

-   To test the concept of conditional expression, pass the value of variable "reserve_public_ip" as either true or false and notice the number of resources being provisioned.

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