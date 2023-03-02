# Terraform Dynamic Block
This sub-project contains terraform code to understand the concept of `Dynamic Block` with the help of resource deployment on Google Cloud Platform.

- Some resource types include repeatable nested blocks in their arguments, which typically represent separate objects that are related to the containing object.
- A dynamic block acts much like a for expression, but produces nested blocks instead of a complex typed value. It iterates over a given complex value, and generates a nested block for each element of that complex value.
- A dynamic block can only generate arguments that belong to the resource type, data source, provider or provisioner being configured. It is not possible to generate meta-argument blocks such as lifecycle and provisioner blocks, since Terraform must process these before it is safe to evaluate expressions.

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
- https://developer.hashicorp.com/terraform/language/expressions/dynamic-blocks