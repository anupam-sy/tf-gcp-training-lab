# Terraform Count
This sub-project contains terraform code to understand the concept of `meta-argument count, for expression and splat expression` with the help of resource deployment on Google Cloud Platform.

- By default, a resource block configures one real infrastructure object. However, sometimes you want to manage several similar objects without writing a separate block for each one. 
- Terraform has two ways to create multiple resources using a single block of code: `count and for_each`
- The count meta-argument accepts a whole number, and creates that many instances of the resource or module.

- A for expression creates a complex type value by transforming another complex type value.
- A splat expression provides a more concise way to express a common operation that could otherwise be performed with a for expression.

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
- https://developer.hashicorp.com/terraform/language/meta-arguments/count
- https://developer.hashicorp.com/terraform/language/expressions/for
- https://developer.hashicorp.com/terraform/language/expressions/splat