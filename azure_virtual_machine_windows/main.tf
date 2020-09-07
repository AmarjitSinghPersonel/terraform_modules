


resource "azurerm_virtual_machine" "vm" {
  name                  = "${var.vm_name}"
  location              = "${var.vnet_location}"
  resource_group_name   = "${var.resource_group_name}"
  network_interface_ids = "${var.network_interface_ids}"
  vm_size               = "${var.vm_size}"
  availability_set_id   = "${var.availability_set_id}"
  # This means the OS Disk will be deleted when Terraform destroys the Virtual Machine
  # NOTE: This may not be optimal in all cases.
  delete_os_disk_on_termination = true

  # This means the Data Disk Disk will be deleted when Terraform destroys the Virtual Machine
  # NOTE: This may not be optimal in all cases.
  delete_data_disks_on_termination = true

  
  storage_os_disk {
    name              = "${var.vm_name}-os"
    caching           = "${var.storage_disk_caching}"
    create_option     = "${var.storage_disk_create_option}"    
  }

  storage_image_reference {
    id = "${var.windows_image_id}"
  }

  os_profile {
    computer_name  = "${var.vm_name}"
    admin_username = "${var.vm_admin_name}"
    #admin_password = data.azurerm_key_vault_secret.vm_pwd.value
    #admin_password = "Password@1234"
    admin_password = "${var.vm_admin_password}"
  }
 os_profile_windows_config{
     provision_vm_agent = true
 }
    tags="${var.tags}"

    # provisioner "local-exec" {
    #   command = "/vm-selfserviceprovisioning-linux-modules-v1/azure_virtual_machine_windows/WSUSConfig.ps1"       
    #   interpreter = ["PowerShell", "-File"]
    # }
    provisioner "local-exec" {
      command = <<EOT
        
      Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" -Name "WUServer" -Value "http://10.0.0.4:8530"
      Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" -Name "WUStatusServer" -Value "http://10.0.0.4:8530"
      Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" -Name "TargetGroupEnabled" -type "DWord" -Value 00000000
      Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" -Name "TargetGroup" -Value "demo"

      Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" -Name "NoAutoUpdate" -type "DWord" -Value 00000000
      Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" -Name "AUOptions" -type "DWord" -Value 00000004
      Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" -Name "UseWUServer" -type "DWord" -Value 00000001
      Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" -Name "NoAutoRebootWithLoggedOnUsers" -type "DWord" -Value 00000001
      Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" -Name "DetectionFrequencyEnabled" -type "DWord" -Value 00000001
      Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" -Name "DetectionFrequency" -type "DWord" -Value 00000010
   EOT
      interpreter = ["PowerShell", "-Command"]
    }

}

 
