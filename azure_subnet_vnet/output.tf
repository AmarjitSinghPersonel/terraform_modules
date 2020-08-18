output "subnet_vnet_id" {
    
    value = "${azurerm_subnet.vnet.id}"    
}
output "subnet_vnet_ids" {
    value = "${azurerm_subnet.vnet.*.id}"    
}

