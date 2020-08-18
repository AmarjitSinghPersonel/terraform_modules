module "resource_group" {
  source = "../azure_resoure_group"
    resource_group_name = "${var.resource_group_name}"
    vm_resource_group_location = "${var.resource_group_location}"                
    tags = "${var.Tags}"
        
}