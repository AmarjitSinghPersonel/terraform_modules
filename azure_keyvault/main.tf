
provider "azurerm" {
  features {
    // key_vault {
    //   purge_soft_delete_on_destroy = "${var.kv_purge_soft_delete_on_destroy}"
    // }
  }
}

data "azurerm_client_config" "current" {}

resource "azurerm_resource_group" "rgname" {
  name     = "${var.kv_resource_group_name}"
  location = "${var.kv_region}"
}

data "azurerm_subnet" "subnet_access" {
  name                 = "${var.subnet_name_for_kv}"
  virtual_network_name = "${var.virtual_network_name_for_kv}"
  resource_group_name  = "${var.vnet_resource_group_name_for_kv}"
}

output "subnet_id" {
  value = data.azurerm_subnet.subnet_access.id
}

resource "azurerm_key_vault" "main" {
  name                        = "${var.kv_resource_group_name}"
  location                    = azurerm_resource_group.rgname.location
  resource_group_name         = azurerm_resource_group.rgname.name
  enabled_for_disk_encryption = "${var.kv_enabled_for_disk_encryption}"
  tenant_id                   = data.azurerm_client_config.current.tenant_id
  soft_delete_enabled         = "${var.kv_soft_delete_enabled}"
  purge_protection_enabled    = "${var.kv_purge_protection_enabled}"
  enabled_for_deployment    = "${var.kv_enabled_for_deployment}"
  enabled_for_template_deployment    = "${var.kv_enabled_for_template_deployment}"

  sku_name = "${var.kv_sku_name}"

  access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = data.azurerm_client_config.current.object_id

    key_permissions = "${var.kv_key_permissions}"

    secret_permissions = "${var.kv_secret_permissions}"
      
    storage_permissions = "${var.kv_storage_permissions}"

    certificate_permissions = "${var.kv_certificate_permissions}"
  }

  network_acls {
    default_action = "${var.kv_network_acl_default_action}"
    bypass         = "${var.kv_network_acl_bypass_action}"
    ip_rules       = "${var.kv_access_ip_rules}"
    virtual_network_subnet_ids = [data.azurerm_subnet.subnet_access.id]
  }

  tags = {
    environment = "Testing"
  }
}

// resource "azurerm_key_vault_secret" "example" {
//   name         = "secret-sauce"
//   value        = "szechuan"
//   key_vault_id = azurerm_key_vault.main.id

//   tags = {
//     environment = "Production"
//   }
// }
