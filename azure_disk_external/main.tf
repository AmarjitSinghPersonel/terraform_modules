resource "azurerm_managed_disk" "external_disks" {
  count                = "${var.datadisks_count}"
  name                 = "${var.vm_name}-data-${count.index + 1}"
  location             = "${var.vnet_location}"
  resource_group_name  = "${var.resource_group_name}"
  storage_account_type = "${var.datadisks_type}"
  create_option        = "${var.external_managed_disk_create_option}"
  disk_size_gb         = "${var.datadisks_size}"
}

resource "azurerm_virtual_machine_data_disk_attachment" "external" {
  count              = "${var.datadisks_count}"
  managed_disk_id    = "${azurerm_managed_disk.external_disks.*.id[count.index]}"
  virtual_machine_id = "${var.vm_id}"
  lun                = "${count.index}"
  caching            = "${var.datadisks_caching}"
}