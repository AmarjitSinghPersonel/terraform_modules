module "network_interface_association_linux" {
  source = "../azure_network_security_group_association"
    #subnetid = "${module.virtual_subnet.subnet_vnet_id}"
    securitygrouppid= "${module.network_security_group.networksecuritygroupid}"
    networkinterfaceid ="${module.network_interface_linux.network_interface_id}"
}
module "network_interface_association_windows" {
  source = "../azure_network_security_group_association"
    #subnetid = "${module.virtual_subnet.subnet_vnet_id}"
    securitygrouppid= "${module.network_security_group.networksecuritygroupid}"
    networkinterfaceid ="${module.network_interface_windows.network_interface_id}"
}