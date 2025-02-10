resource "azurerm_subnet" "mysubnet" {
    name = "mysubnet01"
    resource_group_name = azurerm_resource_group.myresource.name
    virtual_network_name = azurerm_virtual_network.myvnet.name
    address_prefixes = ["10.0.0.0/16"]
  
}