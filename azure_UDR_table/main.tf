# Create an Azure Route table
resource "azurerm_route_table" "route_table" {
  name                = "${var.udr_route_table_name}"
  resource_group_name = "${var.resource_group_name}"
  location            = "${var.location}"
  tags				  = "${var.tags}"
}

resource "azurerm_route" "route" {
  
  name                = "${var.udr_custom_routes[count.index].RouteName}"
  resource_group_name = "${var.resource_group_name}"
  route_table_name    = "${azurerm_route_table.route_table.name}"
  count = "${var.route_count}"  
  address_prefix = "${var.udr_custom_routes[count.index].AddressPrefix}"
  next_hop_type =  "${var.udr_custom_routes[count.index].NextHopType}"
  next_hop_in_ip_address = "${var.udr_custom_routes[count.index].NextHopType}"== "VirtualAppliance" ? "${var.udr_custom_routes[count.index].NextHopIpAddress}" : null
}

