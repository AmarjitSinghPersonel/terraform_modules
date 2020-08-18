variable "vm_name" {
    description="Name of VM associated with network interface and it will be provided by output of VM module"
}
variable "vnet_location" {
    description="Location of network interface"
}
variable "resource_group_name"{
    description="Resource group used in network interface"
}
variable "enable_accelerated_networking"{
    description=" Value of network acceleration(true/false)"
}
variable "subnet_id"{
    description="Subnet id assosicated with network interface and this value will be feeded by output of subnet module"
}
variable "private_ip_allocation_type"{
    description="Type of allocation of private ip(Dynamic/static)"
}
variable "ip_configuration_name"{
    description="Name of ip configuration"
}
