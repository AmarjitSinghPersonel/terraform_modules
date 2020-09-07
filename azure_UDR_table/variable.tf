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




variable "udr_custom_routes" {
  description = "List of custom routes to create of the form {RouteName = \"somename\", AddressPrefix = \"CIDR\", NextHopType = \"somename\", NextHopIpAddress = \"someIP\"}"
  type = "list"
}


variable "route_count"{

}