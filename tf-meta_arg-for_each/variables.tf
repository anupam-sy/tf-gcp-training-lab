# Variable Declaration - Project, Region, Zone, Labels
variable "project_id" {}
variable "resource_region" {}
variable "resource_zone" {}

variable "resource_labels" {
  description = "Resource Labels"
  default = {
    "env"     = "test"
    "buildby" = "anupam"
    "project" = "mgcp-foundation"
  }
}

# Variable Declaration - IaaS/PaaS/SaaS Resources
variable "vpc_name" {
  description = "name of virtual network"
  type        = string
  default     = "my-vpc"
  validation {
    condition = (
      length(var.vpc_name) >= 1 && length(var.vpc_name) <= 62
    )
    error_message = "VPC name must be between 1 and 62 characters long."
  }
}
variable "auto_create" {
  type = bool
}
variable "delete_default_routes" {
  type = bool
}
variable "subnet_data" {}