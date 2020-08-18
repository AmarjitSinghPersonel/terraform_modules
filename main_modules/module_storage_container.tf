module "storage_container" {
    source = "../azure_storage_container"
    name = "${var.storage_container_name}"
    container_access_type = "${var.storage_container_access_type}"
    storage_account_name = "${module.storage.storage_name}"
}