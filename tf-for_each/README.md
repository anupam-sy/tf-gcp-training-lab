# Terraform for_each
This sub-project contains terraform code to understand the concept of `meta-argument for_each and for expression` with the help of resource deployment on Google Cloud Platform.

- The for_each meta-argument accepts a map or a set of strings, and creates an instance for each item in that map or set.
- In blocks where for_each is set, an additional each object is available in expressions, so you can modify the configuration of each instance.
**each.key** — The map key (or set member) corresponding to this instance.
**each.value** — The map value corresponding to this instance. (If a set was provided, this is the same as each.key.)

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
- https://developer.hashicorp.com/terraform/language/meta-arguments/for_each