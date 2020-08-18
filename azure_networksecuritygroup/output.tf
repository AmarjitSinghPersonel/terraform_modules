output "networksecuritygroupname" {
    value = "${azurerm_network_security_group.nsg.name}"
}

output "networksecuritygroupid" {
    value = "${azurerm_network_security_group.nsg.id}"
}