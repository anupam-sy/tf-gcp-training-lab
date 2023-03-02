# Terraform - Provisioners Implementation
This sub-project contains terraform code to understand the concept of `terraform provisioners` with the help of resource deployment on Google Cloud Platform.

- Provisioners can be used to model specific actions on the local machine or on a remote machine in order to prepare servers or other infrastructure objects for service.
- You can add a provisioner block inside the resource block. If you need to run provisioners that aren't directly associated with a specific resource, you can associate them with a null_resource.
- Expressions in provisioner blocks cannot refer to their parent resource by name. Instead, they can use the special self object.

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
- https://developer.hashicorp.com/terraform/language/resources/provisioners/syntax