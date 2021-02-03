
# Create a Network Security Group for Jumphost Access
resource "azurerm_network_security_group" "nsg" {
  name                = "nsg-${random_pet.prefix.id}"
  resource_group_name      = azurerm_resource_group.default.name
  location                 = azurerm_resource_group.default.location
}

# Rules for the Network Security Group for Jumphost Access
resource "azurerm_network_security_rule" "in_allow_mgt_from_vNet" {
    name                       = "in_allow_mgt_from_vNet"
    
    resource_group_name        = azurerm_resource_group.default.name
    network_security_group_name = nsg.name
    direction                  = "Inbound"
    priority                   = 100
    source_address_prefix      = "*"
    access                     = "Allow"
  }

resource "azurerm_network_security_rule" "in_allow_from_internet" {
    name                       = "in_allow_from_internet"
    resource_group_name        = azurerm_resource_group.default.name
    network_security_group_name = nsg.name
    priority                   = 101
    destination_port_range     = "22,80,443,5601"
    access                     = "Allow"
  }

resource "azurerm_network_security_rule" "out_allow_all" {
    name                     = "out_allow_all"    
    resource_group_name        = azurerm_resource_group.default.name
    network_security_group_name = nsg.name
    direction                = "Outbound"
    priority                 = 999
    access                   = "Allow"
  }


