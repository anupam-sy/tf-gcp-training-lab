# Terraform - Built-In Functions
This sub-project contains terraform code to understand the concept of multiple `built-in functions` with the help of resource deployment on Google Cloud Platform.

- The Terraform language includes a number of built-in functions that you can call to transform and combine values. The Terraform language does not support user-defined functions, and so only the functions built in to the language are available for use.
- The examples in this directory illustrates the working of few String and Collection functions.

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
- https://developer.hashicorp.com/terraform/language/functions