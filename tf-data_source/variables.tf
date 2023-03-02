// Variables declaration
variable "project_id" {
  type        = string
  description = "The ID of the google project to house the resources."
}

variable "default_region" {
  type        = string
  description = "The default region to create the google cloud regional resources."
}

variable "default_zone" {
  type        = string
  description = "The default zone to create the google cloud zonal resources."
}

variable "vpc_name" {
  type        = string
  description = "The name of the VPC network whose data to be fetched."
}

variable "subnet_name" {
  type        = string
  description = "The name of the subnet to be created."
}

variable "subnet_cidr" {
  type        = string
  description = "The CIDR range of the subnet to be created."
}