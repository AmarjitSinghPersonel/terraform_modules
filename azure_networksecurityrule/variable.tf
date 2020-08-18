variable "networksecurityrulename"{
    description="Name of security rule"
}
variable "priority"{
    description="Priority of security rule"
}
variable "direction"{
    description="Direction of security rule(Inbound/OutBound)"
}
variable "access"{
    description="Access level of security rule"
}
variable "protocol"{
    description="Protocol of security rule(Tcp,Http etc)"
}
variable "source_port_range"{
    description="Source port range of security rule"
}
variable "destination_port_range"{
    description="Destination port range of security rule"
}
variable "source_address_prefix"{
    description="Source address prefix of security rule"
}
variable "destination_address_prefix"{
    description="Destination address prefix of security rule"
}
variable "resourcegroupname"{
    description="Resource group used in  security rule"
}
variable "networksecuritygroupname"{
    description="Network security group name associated with network security rule"
}