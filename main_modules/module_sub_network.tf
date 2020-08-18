module "virtual_subnet" {
  source = "../azure_subnet_vnet"
    vsubnet_name ="${var.subnetname[count.index]}"    
    vsubnet_rgname = "${module.resource_group.azure_resource_group_name}"
    vnet_name = "${module.virtual_network.vnet_name}"
    vsubnet_address_prefix = "${var.vsubnet_address_prefixes[count.index]}"
    #vsubnet_address_prefixes = "${var.vsubnet_address_prefixes}"
    enforce_private_link_endpoint_network_policies = "${var.enforce_private_link_endpoint_network_policies}"
    enforce_private_link_service_network_policies  = "${var.enforce_private_link_service_network_policies}"
    count = 3
    routetableid = "${module.UDR_Table.route_table_id}"
    securitygrouppid= "${module.network_security_group.networksecuritygroupid}"
  }