variable "image_gallery_name" {
  description = "Image Gallery name for the image used"
}
variable "image_resouce_group" {
  description = "Resource Group name for the image used"
}
variable "image_location" {
  description = "Location of the image used in vm"
}
variable "image_name" {
  description = "Image name of the image used in vm"
}
variable "image_os_type" {
  description = "OS type of the image used in vm, for eg- Windows,Linux"
}
variable "image_publisher" {
  description = "Image Publisher of the image used in vm"
}
variable "image_sku" {
  description = "SKU of the image used in vm"
}
//variable "tags" {
//  description = "A map of tags to add to all resources"
//  default     = {}
//}