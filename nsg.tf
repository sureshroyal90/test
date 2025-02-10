resource "azurerm_network_security_group" "mynsg" {
    name = "mynsg01"
    location = azurerm_resource_group.myresource.location
    resource_group_name = azurerm_resource_group.myresource.name
  
}