
resource "azurerm_subnet_route_table_association" "azrt" {
  #count = "${var.route_association_count}"
  subnet_id      = "${var.subnetid}"
  route_table_id = "${var.routetableid}"
}