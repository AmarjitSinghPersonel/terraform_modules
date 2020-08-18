
variable "udr_route_table_name" {
  description = "The name of the route table to provision"
}

variable "resource_group_name" {
  description = " The name of the resource group where the udr resources will be placed."
}

variable "udr_custom_routes" {
  description = "List of custom routes to create of the form {RouteName = \"somename\", AddressPrefix = \"CIDR\", NextHopType = \"somename\", NextHopIpAddress = \"someIP\"}"
  type = "list"
}
variable "route_name"{
  description = "Name of route"
}
variable "AddressPrefix"{

}
variable "NextHopType"{

}
variable "NextHopIpAddress"{
  
}