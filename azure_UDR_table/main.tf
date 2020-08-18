# Create an Azure Route table
resource "azurerm_route_table" "route_table" {
  name                = "${var.udr_route_table_name}"
  resource_group_name = "${var.resource_group_name}"
  location            = "${var.location}"
  tags				  = "${var.tags}"
}
