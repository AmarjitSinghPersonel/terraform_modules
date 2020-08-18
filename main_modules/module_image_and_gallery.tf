module "image_gallery" {
  source = "../azure_image_and_gallery"
    image_gallery_name="${var.image_gallery_name}"
    image_resouce_group="${module.resource_group.azure_resource_group_name}"
    image_location = "${module.virtual_network.vnet_location}"
    image_name = "${var.image_name}"
    image_os_type = "${var.image_os_type}"
    image_publisher = "${var.image_publisher}"
    image_sku = "${var.image_sku}"
  }
