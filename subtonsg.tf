resource "azurerm_subnet_network_security_group_association" "mysubtonsg" {
    network_security_group_id = azurerm_network_security_group.mynsg.id
    subnet_id = azurerm_subnet.mysubnet.id
  
}