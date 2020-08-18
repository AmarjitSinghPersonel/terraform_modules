module "network_interface" {
  source = "../azure_network_interface"
 # vm_name = "testme-${count.index + 1}"
  vm_name = "testme"
  vnet_location = "${module.virtual_network.vnet_location}"
  resource_group_name = "${module.resource_group.azure_resource_group_name}"
  enable_accelerated_networking = "${var.enable_accelerated_networking}"
  subnet_id = "${module.virtual_subnet[0].subnet_vnet_id}"
  # subnet_id = data.azurerm_subnet.vnet[count.index].id
  # subnet_id = data.azurerm_subnet.vnet.id
  private_ip_allocation_type = "${var.private_ip_allocation_type}"
  ip_configuration_name = "${var.ip_configuration_name}"
  #count = 3
  }
  # data "azurerm_subnet" "vnet" { 
  #   name ="default"
  #   resource_group_name = "${module.resource_group.azure_resource_group_name}"  
  #   virtual_network_name = "${var.vnet_name}"
  #   #count=3
  # }