resource "azurerm_resource_group" "main" {
    name = "${var.resource_group_name}"
    location = "${var.vm_resource_group_location}"
    tags="${var.tags}"
}