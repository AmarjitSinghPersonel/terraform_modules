resource "azurerm_shared_image_gallery" "main" {
  name                = "${var.image_gallery_name}"
  resource_group_name = "${var.image_resouce_group}"
  location            = "${var.image_location}"
//  tags                = "${merge(var.tags, map("Name", format("%s", var.image_gallery_name)))}"
}

resource "azurerm_shared_image" "main" {
  name                = "${var.image_name}"
  gallery_name        = azurerm_shared_image_gallery.main.name
  resource_group_name = "${var.image_resouce_group}"
  location            = "${var.image_location}"
  os_type             = "${var.image_os_type}"

  identifier {
    publisher = "${var.image_publisher}"
    offer     = "myOffer"
    sku       = "${var.image_sku}"
  }
}