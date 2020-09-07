module "network_interface_linux" {
  source = "../azure_network_interface"
  vm_name = "testmelin"
  vnet_location = "${module.virtual_network.vnet_location}"
  resource_group_name = "${module.resource_group.azure_resource_group_name}"
  enable_accelerated_networking = "${var.enable_accelerated_networking}"
  subnet_id = "${module.virtual_subnet[0].subnet_vnet_id}"  
  private_ip_allocation_type = "${var.private_ip_allocation_type}"
  ip_configuration_name = "${var.ip_configuration_name}"
  #count = 3
  }
module "network_interface_windows" {
  source = "../azure_network_interface"
  vm_name = "testmewin"
  vnet_location = "${module.virtual_network.vnet_location}"
  resource_group_name = "${module.resource_group.azure_resource_group_name}"
  enable_accelerated_networking = "${var.enable_accelerated_networking}"
  subnet_id = "${module.virtual_subnet[0].subnet_vnet_id}"  
  private_ip_allocation_type = "${var.private_ip_allocation_type}"
  ip_configuration_name = "${var.ip_configuration_name}"
  #count = 3
  }
