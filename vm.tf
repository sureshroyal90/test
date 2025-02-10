resource "azurerm_virtual_machine" "myvm" {
    name = "myvm01"
    resource_group_name = azurerm_resource_group.myresource.name
    location = azurerm_resource_group.myresource.location
    network_interface_ids = [azurerm_network_interface.mynic.id]
    vm_size = "Standard_DS1_v2"
    storage_image_reference {
      publisher = "Canonical"
      offer     = "0001-com-ubuntu-server-jammy"
      sku       = "22_04-lts"
      version   = "latest"
    }
    storage_os_disk {
      name = "mystorage"
      create_option = "FromImage"
      caching           = "ReadWrite"
      managed_disk_type = "Standard_LRS"
    }
    os_profile {
      admin_username = "testadmin"
      admin_password = "Password1234!"
      computer_name = "hostname"
    }
    os_profile_linux_config {
      disable_password_authentication = false
    }
  
}