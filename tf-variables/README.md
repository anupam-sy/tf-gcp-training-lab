# Terraform Variables
This sub-project contains terraform code to understand the concept of `variable declaration and definition` with the help of resource deployment on Google Cloud Platform.

- You can use input variables to customize your Terraform configuration with values that can be assigned by end users of your configuration. So, variables can be used to make the configuration dynamic and can be defined in a file "variables.tf". 
- Variables value can be passed via different ways, but the feasible and recommended option is to use the variable definition files (files ending with .tfvars extension).

## Prerequisites
All the prerequisites mentioned in top level README file must be fulfilled for successful execution of code.

## Considerations
To run the code from your local machine, please make below changes:
- rename the provider.tf.disabled to provider.tf and backend.tf to backed.tf.disabled, if you want to use local backend.
- Make sure to give "roles/iam.serviceAccountTokenCreator" role to an identity (who will trigger the terraform code) on the service account for the impersonation to succeed.

## TF Code Execution
To execute the terraform code, go to command prompt and then run the following commands:

-   [Required] `terraform init`
-   [Optional] `terraform validate`
-   [Optional] `terraform fmt`
-   [Optional] `terraform plan`
-   [Required] `terraform apply -auto-approve`
-   [Optional] `terraform destroy -auto-approve`

## References
- https://developer.hashicorp.com/terraform/language/values/variables