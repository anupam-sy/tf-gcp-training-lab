# Terraform Provider
This sub-project contains terraform code to understand the concept of `meta-argument provider` with the help of resource deployment on Google Cloud Platform.

-   The provider meta-argument specifies which provider configuration to use for a resource, overriding Terraform's default behavior of selecting one based on the resource type name.
1. Its value should be an unquoted `<PROVIDER>.<ALIAS>` in case you have defined multiple provider configuration. 
2. Its value should be an unquoted `<PROVIDER>` in case you want to define the provider at any case.
3. Explicitly set the provider for your resource to google-beta to avoid the conflicts.

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
- https://registry.terraform.io/providers/hashicorp/google/latest/docs