# Terraform - Standard Backend Implementation
This sub-project contains terraform code to understand the concept of `standard backends` with the help of resource deployment on Google Cloud Platform.

## Prerequisites:
All the prerequisites mentioned in top level readme file must be fulfilled for successful execution of code.

## Usage:
To learn and understand the concept implementation, read below.

-   Backends primarily determine where Terraform stores its state. Terraform uses this persisted state data to keep track of the resources it manages.

-   To test the concept of standard gcs backend, backend configuration has been defined a file "_backend.tf". You can omit the required arguments of backend block (known as partial backend configuration) and pass using a seperate file (example in our case would be backend.conf). Once you initialize the directory, gcs backend would be configured to store state file.

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