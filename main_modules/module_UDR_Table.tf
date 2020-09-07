module "UDR_Table" {
  source = "../azure_UDR_table"
  udr_route_table_name = "${var.udr_route_table_name[count.index]}"
  resource_group_name = "${module.resource_group.azure_resource_group_name}"
  location = "${module.virtual_network.vnet_location}"
  tags = "${var.Tags}"  
  count = "${length(var.udr_route_table_name)}"
  
  route_count               = "${length(var.udr_custom_routes)}"  
  
  udr_custom_routes ="${var.udr_custom_routes}"
  
  }