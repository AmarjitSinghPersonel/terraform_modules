variable "storageaccountname"{
    description ="Name of storage account"
}
variable "resource_group_name"{
    description ="Resource group used in storage account"
}
variable "location"{
    description ="Location of storage account"
}
variable "account_tier"{
    description ="Account tier of storage account(Standard/Premimum)"
}
variable "account_replication_type"{
    description ="Type of account replication of storage account"
}
variable "account_kind"{
    description ="Account kind of storage account"
}
variable "network_default_action"{
    description ="Network default action of storage account"
}
variable "network_ip_rules"{
    description ="Network ip rules of storage account"
}

variable "access_tier"{
    description ="Access tier of storage account(Hot/Cold)"
}
variable "enable_https_traffic_only"{
    description ="HTTPS traffic value for storage account(true/false)"
}
variable "min_tls_version"{
    description ="Min TLS version of storage account"
}
variable "allow_blob_public_access"{
    description ="Blob access of storage account(true/false)"
}
variable "is_hns_enabled"{
    description ="HNS value for storage account(true/false)"
}
variable "environment"{
    description ="Its a Tag used as a label(Production/QA/Test)"
}
