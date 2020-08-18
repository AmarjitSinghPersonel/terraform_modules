<!-- Storage
    Input Parameters
        {
            storageaccountname
            resource_group_name =  We will take resource group name as a output from resource group module
            location = We will take vnet location as a output from vnet module
            account_tier 
            access_tier 
            account_replication_type 
            account_kind 
            network_default_action
            network_ip_rules 
            network_subnet_ids = We get value here from the output of subnet module
            enable_https_traffic_only 
            min_tls_version 
            allow_blob_public_access 
            is_hns_enabled 
            environment 
        }
    Output Parameters
        {
            storage_name
            storage_id
        } -->
