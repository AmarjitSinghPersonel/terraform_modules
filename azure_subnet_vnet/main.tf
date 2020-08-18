resource "azurerm_subnet" "vnet" {
    name = "${var.vsubnet_name}"
    resource_group_name = "${var.vsubnet_rgname}"    
    virtual_network_name = "${var.vnet_name}"
    address_prefix = "${var.vsubnet_address_prefix}"  
    #address_prefixes = "${var.vsubnet_address_prefixes}" 
    enforce_private_link_endpoint_network_policies = "${var.enforce_private_link_endpoint_network_policies}"
    enforce_private_link_service_network_policies = "${var.enforce_private_link_service_network_policies}"
}
resource "azurerm_subnet_route_table_association" "azrt" {
  #count = "${var.route_association_count}"
  subnet_id      = "${azurerm_subnet.vnet.id}"
  route_table_id = "${var.routetableid}"
  
}
resource "azurerm_subnet_network_security_group_association" "subnetassociation" {
  subnet_id                 = "${azurerm_subnet.vnet.id}"
  network_security_group_id = "${var.securitygrouppid}"
}
