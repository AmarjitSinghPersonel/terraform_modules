module "network_security_group" {
  source = "../azure_networksecuritygroup"
  networksecuritygroupname = "${var.networksecuritygroupname}"
  networksecuritygrouplocation = "${module.virtual_network.vnet_location}"
  resourcegroupname = "${module.resource_group.azure_resource_group_name}"
}