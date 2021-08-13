data "azurerm_resource_group" "rg"{
    name = "my_resource_group"
}

resource "azurerm_virtual_network" "my_virtual_network" {
    name = var.virtual_network_name
    location = data.azurerm_resource_group.rg.location
    resource_group_name = data.azurerm_resource_group.rg.name
    address_space = [var.virtual_network_adress_space]
}

resource "azurerm_subnet" "my_subnet" {
    for_each = var.subnets
    name = each.value.name
    resource_group_name  = data.azurerm_resource_group.rg.name
    virtual_network_name = azurerm_virtual_network.my_virtual_network.name
    address_prefixes     = each.value.address_space
}
