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
variable "vpc_name" {}
variable "subnet_name" {}
variable "subnet_cidr" {}