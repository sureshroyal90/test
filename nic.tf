resource "azurerm_network_interface" "mynic" {
  name = "mynic01"
  location = azurerm_resource_group.myresource.location
  resource_group_name = azurerm_resource_group.myresource.name
  ip_configuration {
    name = "mynic0101"
    private_ip_address_allocation = "Dynamic"
    subnet_id = azurerm_subnet.mysubnet.id
    public_ip_address_id = azurerm_public_ip.mupublicip.id
  }
}