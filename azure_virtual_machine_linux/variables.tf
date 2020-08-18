variable "vm_name"{
    description ="Name of virtual machine"
}
variable "vnet_location" {
    description ="Location of virtual machine"
}

variable "network_interface_ids"{
    description ="Network interface ids associated with virtual machine"
}
variable "vm_size"{
    description ="Size of virtual machine"
}
variable "availability_set_id"{
    description ="Availability set id feeded by availability setmodule to virtual machine"
}
variable "storage_disk_caching"{
    description ="Internal disk caching option of virtual machine"
}
variable "storage_disk_create_option"{
    description ="Inernal disk create option of virtual machine(empty/fromimage etc)"
}
variable "vm_admin_name"{
    description ="Admin user name of virtual machine"
}
variable "vm_admin_password"{
    description ="Admin password of virtual machine"
}
variable "linux_image_id"{
    description ="Image id used to create virtual machine"
}
variable "resource_group_name"{
    description ="Resource group used in virtual machine"
}
variable "tags"{
    description="Server tags"
}
# variable "vm_tags_ApplicationID" {}
# variable "vm_tags_Owner" {}
# variable "vm_tags_PatchingGroup" {}
# variable "vm_tags_method" {}
# variable "vm_tags_Market" {}
# variable "vm_tags_GBL" {}



