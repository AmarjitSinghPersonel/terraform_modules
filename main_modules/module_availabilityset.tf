module "availability_set" {
  source = "../azure_availabilityset"
    vm_availabilitysetname = "${var.availabilitysetname}"
    vnet_location = "${module.virtual_network.vnet_location}"
    resource_group_name = "${module.resource_group.azure_resource_group_name}"
    tags = "${var.Tags}"
}