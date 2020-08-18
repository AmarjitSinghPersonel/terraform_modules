module "virtual_network" {
  source = "../azure_vnet"
    vnet_name="${var.vnet_name}"
    vnet_resource_group_name="${module.resource_group.azure_resource_group_name}"
    vnet_address ="${var.vnet_address}"
    vnet_location = "${var.vnet_location}"
  }
