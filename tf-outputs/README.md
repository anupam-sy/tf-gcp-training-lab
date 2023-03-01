# Terraform Outputs
This sub-project contains terraform code to understand the concept of `Output Block` and its optional arguments with the help of resource deployment on Google Public Cloud and Random ID generation.

- Output values make information available on the command line about your infrastructure, and can expose information for other Terraform configurations to use.
- It is typically recommended to place all the output values in a file `outputs.tf`. These outputs can be viewed on CLI using `terraform output`.

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
- https://developer.hashicorp.com/terraform/language/values/outputs