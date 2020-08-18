output "external_data_disk_ids" {
    value = azurerm_managed_disk.external_disks.*.id
}