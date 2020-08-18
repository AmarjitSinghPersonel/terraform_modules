# module "subnet_route_association" {
#     source = "../azure_subnet_route_table_association"
#     subnetid = "${module.virtual_subnet.subnet_vnet_id}"
#     routetableid = "${module.UDRT.route_table_id}"
#     route_association_count = 3
#     #count=3
#   }