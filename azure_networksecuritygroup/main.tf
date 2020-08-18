
resource "azurerm_network_security_group" "nsg" {
  name                = "${var.networksecuritygroupname}"
  location            = "${var.networksecuritygrouplocation}"
  resource_group_name = "${var.resourcegroupname}"
}
