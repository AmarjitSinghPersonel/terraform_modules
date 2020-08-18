variable "datadisks_count"{
    description =" Count of desired no of disks"
}
variable "datadisks_type"{
    description ="TYpe of data disk"
}
variable "datadisks_size"{
    description = "Size of data disk"
}
variable "datadisks_caching"{
    description=" Caching option for data disk"
}
variable "vnet_location" {
    description="Location of data disk"
}
variable "resource_group_name"{
    description= "Resource used in data disk" 
}
variable "external_managed_disk_create_option"{
    description =" Create option used to create disk"
}
variable "vm_id"{
    description="Id of VM associated with disk and it will be provided by output of VM module"
}
variable "vm_name"{
description="Name of VM associated with disk and it will be provided by output of VM module"

}