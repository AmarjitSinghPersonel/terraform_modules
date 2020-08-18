output "networksecurityrulename" {
    value = "${azurerm_network_security_rule.nsr.name}"
}
output "networksecurityruleid" {
    value = "${azurerm_network_security_rule.nsr.id}"
}