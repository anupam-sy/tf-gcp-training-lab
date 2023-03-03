# Terraform Module Implementation
This sub-project contains terraform code to understand the concept of `module implementation` with the help of resource deployment on Google Cloud Platform.

- A module is a collection of .tf and/or .tf.json files kept together in a directory. which can be reused to create terraform resources.
- A Terraform module only consists of the top-level configuration files in a directory; nested directories are treated as completely separate modules and are not automatically included in the configuration.

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
- https://developer.hashicorp.com/terraform/language/modules/syntax