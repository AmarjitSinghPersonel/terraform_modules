terraform module
===========

A terraform module to provide an Shared Image Gallery in Azure along with an Image.

Module Input Variables
----------------------

- `image_gallery_name` - Image Gallery Name
- `image_resouce_group` - Resource Group Name
- `image_location` - Image Location
- `image_name` - Image Name
- `image_os_type` - OS type in the Image
- `image_publisher` - Image Publisher 
- `image_sku` - SKU for Image
- `tags` - Respective tags for the resource

Outputs
=======

 - `Image_ID` - id of the image reference
 - `Image_gallery_ID` - id for shared image gallery


License
=======

Apache 2 Licensed. See LICENSE for full details.