output "Image_ID" {
  value = "${azurerm_shared_image.main.id}"
}

output "Image_gallery_ID" {
  value = "${azurerm_shared_image_gallery.main.id}"
}