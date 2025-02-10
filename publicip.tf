resource "azurerm_public_ip" "mupublicip" {
    name = "mypublicip01"
    location = azurerm_resource_group.myresource.location
    allocation_method = "Static"
    resource_group_name = azurerm_resource_group.myresource.name
  
}