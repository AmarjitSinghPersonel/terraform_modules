output "azurerm_key_vault_id" {
  value = "${azurerm_key_vault .main.id}"
}
output "azurerm_key_vault_uri" {
  value = "${azurerm_key_vault.main.vault_uri}"
}