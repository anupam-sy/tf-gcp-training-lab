/*************************************************
  Input values of VPC network resource
*************************************************/

variable "project_id" {
  type        = string
  description = "The ID of the google project to house the vpc resource."
}

variable "vpc_name" {
  type        = string
  description = "The name of the VPC network being created."
}

variable "description" {
  type        = string
  description = "The description of the VPC network being created."
  default     = ""
}

variable "routing_mode" {
  type        = string
  description = "The network-wide routing mode to use. If set to REGIONAL, this network's cloud routers will only advertise routes with subnetworks of this network in the same region as the router. If set to GLOBAL, this network's cloud routers will advertise routes with all subnetworks of this network, across regions. Possible values are REGIONAL and GLOBAL."
  default     = "GLOBAL"
}

variable "auto_create_subnetworks" {
  type        = bool
  description = "Use false, If you want to use custom subnets. When set to true, the network is created in auto subnet mode and it will create a subnet for each region automatically across the 10.128.0.0/9 address range."
  default     = false
}

variable "delete_default_routes_on_create" {
  type        = bool
  description = "If set to true, default routes (0.0.0.0/0) will be deleted immediately after network creation. Defaults to false."
  default     = false
}