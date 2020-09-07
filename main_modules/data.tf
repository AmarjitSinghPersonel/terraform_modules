# locals {
#   json_data = file("data.json")
# }
data "azurerm_key_vault" "main" {
   name                = "${var.kev_vault_admin_name}"
   resource_group_name = "${var.kev_vault_rg_name}"
   
   
}
data "azurerm_key_vault_secret" "vm_pwd" {
  name         = "${var.kev_vault_admin_secert_name}"
  key_vault_id = data.azurerm_key_vault.main.id
}
#var-file .\\get-route\ROUTESJSON.auto.tfvars.json