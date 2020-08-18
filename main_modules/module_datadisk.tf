module "datadisk_windows" {
  source = "../azure_disk_external"
  datadisks_count = "${var.external_data_disk_count}"
  datadisks_caching = "${var.external_data_disk_caching}"  
  datadisks_size="${var.external_data_disk_size}"
  datadisks_type="${var.external_data_disk_type}"
  external_managed_disk_create_option = "${var.external_data_disk_create_option}"
  vm_name = "${module.virtual_machine_windows.virtual_machine_name}"
  resource_group_name = "${module.resource_group.azure_resource_group_name}"
  vm_id = "${module.virtual_machine_windows.virtual_machine_id}"
  vnet_location = "${module.virtual_network.vnet_location}"
}
module "datadisk_linux" {
  source = "../azure_disk_external"
  datadisks_count = "${var.external_data_disk_count}"
  datadisks_caching = "${var.external_data_disk_caching}"  
  datadisks_size="${var.external_data_disk_size}"
  datadisks_type="${var.external_data_disk_type}"
  external_managed_disk_create_option = "${var.external_data_disk_create_option}"
  vm_name = "${module.virtual_machine_linux.virtual_machine_name}"
  resource_group_name = "${module.resource_group.azure_resource_group_name}"
  vm_id = "${module.virtual_machine_linux.virtual_machine_id}"
  vnet_location = "${module.virtual_network.vnet_location}"
}
