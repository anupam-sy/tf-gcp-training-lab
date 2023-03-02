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

variable "reserve_eip" {
  type        = bool
  default     = false
  description = "Set to true, If you want to reserve the external IP."
}

variable "eip_name" {
  type        = string
  description = "The name of the external IP to be reserved."
}