resource "azurerm_storage_account" "storage" {
  name                     = "${var.storageaccountname}"
  resource_group_name      = "${var.resource_group_name}"
  location                 = "${var.location}"
  account_tier             = "${var.account_tier}"
  account_replication_type = "${var.account_replication_type}"
  account_kind = "${var.account_kind}"
#BlobStorage, BlockBlobStorage, FileStorage, Storage and StorageV2
  
# network_rules {
#     default_action             = "${var.network_default_action}"
#     ip_rules                   = "${var.network_ip_rules}"
#     virtual_network_subnet_ids = "${var.network_subnet_ids}"
#   }

    access_tier  = "${var.access_tier}"
    enable_https_traffic_only ="${var.enable_https_traffic_only}"
    min_tls_version = "${var.min_tls_version}"
    allow_blob_public_access  = "${var.allow_blob_public_access}"
    is_hns_enabled = "${var.is_hns_enabled}"
  tags = {
    environment = "${var.environment}"
  }
}
