# Terraform - depends_on Meta-Argument
This sub-project contains terraform code to understand the concept of meta-argument `depends_on` for explicit dependency with the help of resource deployment on Google Cloud Platform.

## Prerequisites:
All the prerequisites mentioned in top level readme file must be fulfilled for successful execution of code.

## Usage:
To learn and understand the concept implementation, read below.

-   Use the depends_on meta-argument to handle hidden resource or module dependencies that Terraform can't automatically infer.

-   To test the concept of meta-argument depends_on, check the subnetwork deployment configuration file `gcp_subnetwork.tf`. In that, two resource block has been implemented to demonstrate the implicit and explicit dependency.

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