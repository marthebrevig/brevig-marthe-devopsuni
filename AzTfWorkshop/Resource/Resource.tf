resource "azurerm_resource_group" "my_resource_group" {
    name = var.resource_group_name
    location = var.resource_group_location
    tags = {
        name = "Task1"
    }
}