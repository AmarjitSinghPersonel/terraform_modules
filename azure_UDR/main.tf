
resource "azurerm_route" "route" {
  
  name                = "${var.route_name}"
  resource_group_name = "${var.resource_group_name}"
  route_table_name    = "${var.udr_route_table_name}"
  address_prefix      = "${var.AddressPrefix}"
  next_hop_type       = "${var.NextHopType}"
  next_hop_in_ip_address = "${var.NextHopType}"== "VirtualAppliance" ? "${var.NextHopIpAddress}" : null
}

