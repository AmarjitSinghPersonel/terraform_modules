module "network_interface_association" {
  source = "../azure_network_security_group_association"
    #subnetid = "${module.virtual_subnet.subnet_vnet_id}"
    securitygrouppid= "${module.network_security_group.networksecuritygroupid}"
    networkinterfaceid ="${module.network_interface.network_interface_id}"
}