variable "udr_route_table_name" {
  description = "The name of the route table to provision"
}

variable "resource_group_name" {
  description = " The name of the resource group where the udr resources will be placed."
}

variable "location" {
  description = " The vnet location."
}
variable "tags" {
  description = " A mapping of tags to assign to the resource"
  type = "map"
}