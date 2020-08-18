<!-- network_security_rule
    Input parameters
        {
            networksecurityrulename 
            priority 
            direction
            access 
            protocol
            source_port_range
            destination_port_range
            source_address_prefix
            destination_address_prefix
            resourcegroupname =  We will take resource group name as a output from resource group module
            networksecuritygroupname = We will this value from output value of network_security_group
        }
    Output parameters
        {
            networksecurityrulename
            networksecurityruleid
        }
	 -->
