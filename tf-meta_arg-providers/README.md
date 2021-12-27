# Terraform - provider Meta-Argument
This sub-project contains terraform code to understand the concept of `meta-argument provider` with the help of resource deployment on Google Cloud Platform.

## Prerequisites:
All the prerequisites mentioned in top level readme file must be fulfilled for successful execution of code.

## Usage:
To learn and understand the concept implementation, read below.

-   The provider meta-argument specifies which provider configuration to use for a resource, overriding Terraform's default behavior of selecting one based on the resource type name.
1) Its value should be an unquoted `<PROVIDER>.<ALIAS>` in case you have defined multiple provider configuration. 
2) Its value should be an unquoted `<PROVIDER>` in case you want to define the provider at any case.

-   To test the concept of provider meta-argument, check the external ip deployment configuration file `gcp_external_ip.tf`. In that, provider is provided in resource block to select the google-beta provider for external ip deployment.

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