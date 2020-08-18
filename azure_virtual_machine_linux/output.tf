output "virtual_machine_name" {
    value = "${azurerm_virtual_machine.vm.name}"
}
output "virtual_machine_id" {
    value = "${azurerm_virtual_machine.vm.id}"
}