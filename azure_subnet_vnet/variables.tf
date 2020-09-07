variable "vsubnet_name" {
    description ="Name of virtual subnet"
}
variable "vsubnet_rgname" {
    description ="Resource group used in virtual subnet"
}
variable "vnet_name"{
    description ="Name of VNET assosicated with virtual subnet"
}
variable "vsubnet_address_prefix"{
    description ="Address prefix of virtual subnet"
}
# variable "vsubnet_address_prefixes"{
#     description ="Address prefixes  of virtual subnet"
# }
variable "enforce_private_link_endpoint_network_policies" {
    description ="End point network policies of virtual subnet(true/false)"
}
variable "enforce_private_link_service_network_policies" {
    description ="Service network policies of virtual subnet(true/false)"
}
# variable "routetableid"{

# }
variable "securitygrouppid"{

}
