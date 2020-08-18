
resource "azurerm_availability_set" "main" {
  name                = "${var.vm_availabilitysetname}"
  location            = "${var.vnet_location}"
  resource_group_name = "${var.resource_group_name}"
  platform_fault_domain_count = "${var.vnet_location == "southeastasia" ? 2 : 3}" 
  tags="${var.tags}"
  }