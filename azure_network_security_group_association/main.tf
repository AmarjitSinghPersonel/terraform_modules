
resource "azurerm_network_interface_security_group_association" "interfaceassociation" {
  network_interface_id      = "${var.networkinterfaceid}"
  network_security_group_id = "${var.securitygrouppid}"
}