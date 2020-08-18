resource "azurerm_network_interface" "nic" {
  name                = "${var.vm_name}-nic"
  location            = "${var.vnet_location}"
  resource_group_name = "${var.resource_group_name}"
  enable_accelerated_networking = "${var.enable_accelerated_networking}"
  
  ip_configuration {
    name                          = "${var.ip_configuration_name}"
    subnet_id                   = "${var.subnet_id}"
    private_ip_address_allocation = "${var.private_ip_allocation_type}"
  }
}