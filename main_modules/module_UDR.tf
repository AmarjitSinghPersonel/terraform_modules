# module "UDR" {
#   source = "../azure_UDR"
#   udr_route_table_name ="${module.UDR_Table.route_table_name}"
#   resource_group_name = "${module.resource_group.azure_resource_group_name}"  
#   udr_custom_routes ="${var.udr_custom_routes}"
#   count               = "${length(var.udr_custom_routes)}"
#   route_name                = "${var.udr_custom_routes[count.index].RouteName}"
#   AddressPrefix = "${var.udr_custom_routes[count.index].AddressPrefix}"
#   NextHopType =  "${var.udr_custom_routes[count.index].NextHopType}"
#   NextHopIpAddress = "${var.udr_custom_routes[count.index].NextHopIpAddress}"
#   }