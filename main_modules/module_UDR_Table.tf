module "UDR_Table" {
  source = "../azure_UDR_table"
  udr_route_table_name = "${var.udr_route_table_name}"
  resource_group_name = "${module.resource_group.azure_resource_group_name}"
  location = "${module.virtual_network.vnet_location}"
  tags = "${var.Tags}"  
  }