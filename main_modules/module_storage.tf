module "storage" {
    source = "../azure_storage"
    storageaccountname = "amarjitsstorage"
    resource_group_name = "${module.resource_group.azure_resource_group_name}"
    location = "${module.virtual_network.vnet_location}"
    account_tier = "${var.storage_account_tier}"
    access_tier = "${var.storage_access_tier}"
    account_replication_type = "${var.storage_account_replication_type}"
    account_kind = "${var.storage_account_kind}"
    network_default_action = "${var.storage_network_default_action}"
    network_ip_rules = "${var.storage_network_ip_rules}"
    #network_subnet_id = "${module.virtual_subnet.subnet_vnet_id}"
    enable_https_traffic_only = "${var.storage_enable_https_traffic_only}"
    min_tls_version = "${var.storage_min_tls_version}"
    allow_blob_public_access = "${var.storage_allow_blob_public_access}"
    is_hns_enabled = "${var.storage_is_hns_enabled}"
    environment = "${var.storage_environment}"
  }

