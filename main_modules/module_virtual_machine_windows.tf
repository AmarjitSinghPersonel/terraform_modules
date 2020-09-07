module "virtual_machine_windows" {
  source = "../azure_virtual_machine_windows"
  vm_name                = "${var.vm_name_windows}"  
  vnet_location            = "${module.virtual_network.vnet_location}"
  network_interface_ids = "${module.network_interface_windows.network_interface_ids}"
  vm_size = "${var.vm_size}"
  availability_set_id = "${module.availability_set.availability_set_id}"
  storage_disk_caching = "${var.storage_disk_caching}"
  storage_disk_create_option = "${var.storage_disk_create_option}"
  windows_image_id = "${var.windows_image_id}"
  vm_admin_name = "${var.vm_admin_name}"  
  vm_admin_password = data.azurerm_key_vault_secret.vm_pwd.value  
  resource_group_name = "${module.resource_group.azure_resource_group_name}"    
  tags="${var.Tags}"
  #vm_count = 1
}


