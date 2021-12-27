# Terraform - lifecycle block
This sub-project contains terraform code to understand the concept of `lifecycle block` with the help of resource deployment on Google Cloud Platform.

## Prerequisites:
All the prerequisites mentioned in top level readme file must be fulfilled for successful execution of code.

## Usage:
To learn and understand the concept implementation, read below.

-   lifecycle is a nested block that can appear within a resource block. The lifecycle block and its contents are meta-arguments, available for all resource blocks regardless of type. lifecycle block is used to change the typical behavoiur of resource.

-   To test the concept of resource lifecycle, check the subnetwork deployment configuration file `gcp_network.tf`. In that, three meta-arguments are passed under lifecycle block to tweak the typical behaviour of resource.

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