resource "azurerm_virtual_network" "myvnet" {
    name = "myvirtualnetwork"
    resource_group_name = azurerm_resource_group.myresource.name
    location = azurerm_resource_group.myresource.location
    address_space = ["10.0.0.0/16"]
  
}