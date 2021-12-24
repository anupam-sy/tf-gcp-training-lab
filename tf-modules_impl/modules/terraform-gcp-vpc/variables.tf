variable "vpc_name" {
  description = "Virtual Network Name."
}

variable "description" {
  type        = string
  description = "Description of VPC resource."
  default     = ""
}

variable "project_id" {
  description = "Project ID where VPC wiil be created in."
}

variable "auto_create_subnetworks" {
  type        = bool
  description = "Use false, If you want to use custom subnets."
  default     = false
}

variable "routing_mode" {
  type        = string
  description = "The network-wide routing mode to use. If set to REGIONAL, this network's cloud routers will only advertise routes with subnetworks of this network in the same region as the router. If set to GLOBAL, this network's cloud routers will advertise routes with all subnetworks of this network, across regions. Possible values are REGIONAL and GLOBAL."
  default     = "GLOBAL"
}

variable "delete_default_routes_on_create" {
  type        = bool
  description = "If set to true, default routes (0.0.0.0/0) will be deleted immediately after network creation. Defaults to false."
  default     = false
}