variable "Tags"{
    default={
                vm_tags_ApplicationID="APP0000339"
                vm_tags_GBL="195500855370"
                vm_tags_Market="CORP"
                vm_tags_method="AzureDevOpsPipeline"
                vm_tags_Owner="amarjit.singh@us.mcd.com"
                vm_tags_PatchingGroup="NA"  
    }
}
variable "kev_vault_admin_name"{
    default="ansiblekeyvaultmar"
}

variable "kev_vault_rg_name"{
    #default="rg_demo_amar"
    #default=local.json_data.rg_name
}

#var.kev_vault_rg_name = local.json_data.rg_name
variable "kev_vault_admin_secert_name"{
    default="vm-admin-pwd"
}
variable "availabilitysetname"{
default="linuxdemoavailabilityset"
}
variable "external_data_disk_count"{
    default="1"
}
variable "external_data_disk_caching"{
    default="ReadWrite"
}
variable "external_data_disk_size"{
    default="32"
}
variable "external_data_disk_type"{
    default="Standard_LRS"
}
variable "external_data_disk_create_option"{
    default="Empty"
}

variable "image_name"{
    default = "Linux_image"
}
variable "image_gallery_name"{
    default = "linux_image_gallery"
}
variable "image_os_type"{
    default = "Linux"
}
variable "image_publisher"{
    default = "corpIT"
}
variable "image_sku"{
    default = "18.04-LTS"
}

variable "enable_accelerated_networking"{
    default="false"
}
variable "private_ip_allocation_type"{
    default="Dynamic"
}
variable "ip_configuration_name"{
    default="PrimaryIP"
}

variable "networksecuritygroupname"{
    default="azuresecuritygroup"
}
variable "networksecurityrulenameoutbound"{
    default="azuresecurityruleoutbound"
}

variable "priority_outbound"{
    default="100"
}

variable "direction_outbound"{
    default="Outbound"
}
variable "access_outbound"{
    default="Allow"
}

variable "protocol_outbound"{
    default="Tcp"
}
variable "source_port_range_outbound"{
    default="*"
}
variable "destination_port_range_outbound"{
    default="*"
}
variable "source_address_prefix_outbound"{
    default="*"
}
variable "destination_address_prefix_outbound"{
    default="*"
}

variable "networksecurityrulenameinbound"{
    default="azuresecurityruleinbound"
}

variable "priority_inbound"{
    default="100"
}

variable "direction_inbound"{
    default="Inbound"
}
variable "access_inbound"{
    default="Allow"
}

variable "protocol_inbound"{
    default="Tcp"
}
variable "source_port_range_inbound"{
    default="*"
}
variable "destination_port_range_inbound"{
    default="*"
}
variable "source_address_prefix_inbound"{
    default="*"
}
variable "destination_address_prefix_inbound"{
    default="*"
}
variable "resource_group_name"{
    default="linux_module_demo_rg"
}
variable "resource_group_location"{
    default="eastus"
}
variable "storage_account_tier"{
    default="Standard"
}
variable "storage_access_tier"{
    default="hot"
}
variable "storage_account_replication_type"{
    default="LRS"
}
variable "storage_account_kind"{
    default="BlobStorage"
}
variable "storage_network_default_action"{
    default="Deny"
}
variable "storage_network_ip_rules"{
    default=["100.0.0.1"]
}
variable "storage_enable_https_traffic_only"{
    default="false"
}
variable "storage_min_tls_version"{
    default="TLS1_0"
}
variable "storage_allow_blob_public_access"{
    default="false"
}
variable "storage_is_hns_enabled"{
    default="true"
}
variable "storage_environment"{
    default="Production"
}
variable "storage_container_name"{
    default="mynewstoragecontainer"
}
variable "storage_container_access_type"{
    default="private"
}
variable "vsubnet_address_prefix"{
    default="10.0.2.0/24"
}

variable "enforce_private_link_endpoint_network_policies"{
    default="false"
}
variable "enforce_private_link_service_network_policies"{
    default="false"
}
variable "subnetname"{
 type        = list(string)
    default=["private1","private2","public1"]
}
variable "udr_route_table_name"{    
    type        = list(string)
    default=["private_route_table1","private_route_table2","public_route_table1"]
}
variable "vsubnet_address_prefixes"{
  type        = list(string)
    default=["10.0.1.0/24","10.0.2.0/24","10.0.3.0/24"]
}
variable "subnet_routetable_association"{
    
    default = [
        {subnetname="private1",routetablename="private_route_table1"},
        {subnetname="private2",routetablename="private_route_table2"},
        {subnetname="private1",routetablename="private_route_table2"},
        {subnetname="private2",routetablename="private_route_table1"},
        {subnetname="public1",routetablename="public_route_table1"},
        {subnetname="public1",routetablename="private_route_table1"},
        {subnetname="public1",routetablename="private_route_table2"}        
    ]
}
variable "udr_custom_routes"{
    default=[
      {RouteName = "somename", AddressPrefix = "10.1.0.0/16", NextHopType = "VirtualAppliance", NextHopIpAddress = "10.1.0.5"},
      {RouteName = "somename1", AddressPrefix = "10.2.0.0/16", NextHopType = "VirtualAppliance", NextHopIpAddress = "10.1.0.7"},
      {RouteName = "somename2", AddressPrefix = "10.3.0.0/16", NextHopType = "VirtualAppliance", NextHopIpAddress = "10.1.0.9"}
  ]
}


variable "vm_name_linux"{
    default="vmlinuxmodule"
}
variable "vm_name_windows"{
    default="vmwinmodule"
}
variable "vm_size"{
    default="Standard_B2ms"
}
variable "storage_disk_caching"{
    default="ReadWrite"
}
variable "storage_disk_create_option"{
    default="FromImage"
}
variable "image_id"{
    default="/subscriptions/39a939fd-de7a-45d8-91a6-a9e868096197/resourceGroups/ibLinuxGalleryRG/providers/Microsoft.Compute/galleries/devOpsSIGLinux/images/linuxImageDef/versions/0.24352.1571" 
}
variable "windows_image_id"{
    default="/subscriptions/39a939fd-de7a-45d8-91a6-a9e868096197/resourceGroups/aibDevOpsImg/providers/Microsoft.Compute/galleries/devOpsSIG/images/winSvrimages/versions/0.24374.22601" 
}
variable "vm_admin_name"{
    default="AzureUser"
}
variable "vnet_name"{
    default="linux_virtual_network"
}
variable "vnet_address"{
    default=["10.0.0.0/16"]
}
variable "vnet_location"{
    default="eastus"
}