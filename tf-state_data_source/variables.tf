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

variable "iip_name" {
  type        = string
  description = "The name of internal ip address which is to be reserved."
}