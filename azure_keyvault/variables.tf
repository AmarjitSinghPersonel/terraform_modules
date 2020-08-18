variable "keyvaultname" { 
    description = "(Required) Specifies the name of the Key Vault. Changing this forces a new resource to be created."
    default = "testvault001" 
}
variable "kv_resource_group_name" {     
    description = "(Required) The name of the resource group in which to create the Key Vault. Changing this forces a new resource to be created."
    default = "testvault001RG" 
}
variable "kv_purge_soft_delete_on_destroy" { 
    description = ""
    default = "false" 
}
variable "kv_tags" { 
    description = "(Optional) A mapping of tags to assign to the resource."
    default = {
        vm_tags_ApplicationID="testvault001"
        vm_tags_GBL="testvault001"
        vm_tags_Market="DEV"
        vm_tags_method="AzureDevOpsPipeline"
        vm_tags_Owner="bhupinder.singh@us.mcd.com"
        vm_tags_PatchingGroup="NA"  
    }
}
variable "kv_sku_name" { 
    description = "(Required) The Name of the SKU used for this Key Vault. Possible values are standard and premium."
    default = "standard" 
} // premium , standard
variable "kv_region" { 
    description = " (Required) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
    default = "eastus" 
}
variable "kv_soft_delete_enabled" { 
    description = "(Optional) Should Soft Delete be enabled for this Key Vault? Defaults to false."
    default = "false" 
}
variable "kv_enabled_for_deployment" { 
    description = "(Optional) Boolean flag to specify whether Azure Virtual Machines are permitted to retrieve certificates stored as secrets from the key vault. Defaults to false"
    default = "false" 
}
variable "kv_enabled_for_disk_encryption" { 
    description = "(Optional) Boolean flag to specify whether Azure Disk Encryption is permitted to retrieve secrets from the vault and unwrap keys. Defaults to false."
    default = "false"
}
variable "kv_enabled_for_template_deployment" { 
    description = "(Optional) Boolean flag to specify whether Azure Resource Manager is permitted to retrieve secrets from the key vault. Defaults to false."
    default = "false" 
}
variable "kv_purge_protection_enabled" { 
    description = "(Optional) Is Purge Protection enabled for this Key Vault? Defaults to false."
    default = "false"
}

// virtual_network_subnet_ids: (Optional) One or more Subnet ID's which should be able to access this Key Vault. its value configured within main.tf

variable "subnet_name_for_kv" { 
    description = "Subnet name for keyvault"
    default = "default" 
}
variable "virtual_network_name_for_kv" { 
    description = "Virtual network name for keyvault"
    default = "bhu-rg-east-us-vnet"
}
variable "vnet_resource_group_name_for_kv" { 
    description = "Resource Group for Virtual Network"
    default = "bhu-rg-east-us" 
}
variable "kv_network_acl_default_action" { 
    description = "(Required) The Default Action to use when no rules match from ip_rules / virtual_network_subnet_ids."
    default = "Deny" 
}  // Allow,Deny
variable "kv_network_acl_bypass_action" { 
    description = "(Required) Specifies which traffic can bypass the network rules"
    default = "AzureServices" 
} // none ,AzureServices
variable "kv_access_ip_rules"  { 
    description = "(Optional) One or more IP Addresses, or CIDR Blocks which should be able to access the Key Vault."
    type = list(string)
    default = ["157.39.48.89"]
}
  
variable "kv_key_permissions" { 
    description = " (Optional) List of key permissions,"
    type = list(string)
    default = [
     "backup", "create", "decrypt", "delete", "encrypt", "get", "import", "list", "purge", "recover", "restore", "sign", "unwrapKey", "update", "verify" ,"wrapKey"
    ]
}
variable "kv_secret_permissions" { 
    description = " (Optional) List of secret permissions,"
    type = list(string)
    default = [
     "backup", "delete", "get", "list", "purge", "recover", "restore", "set"
    ]
}
variable "kv_storage_permissions" { 
    description = " (Optional) List of storage permissions,"
    type = list(string)
    default = [
     "backup", "delete", "get", "list", "purge", "recover", "restore", "getsas", "regeneratekey", "update", "listsas" ,"deletesas","set","setsas"
    ]
}
variable "kv_certificate_permissions" { 
    description = "(Optional) List of certificate permissions"
    type = list(string)
    default = [
     "backup", "create", "deleteissuers", "delete", "getissuers", "get", "import", "list", "purge", "recover", "restore", "listissuers", "managecontacts", "update", "manageissuers" ,"setissuers"
    ]
}
