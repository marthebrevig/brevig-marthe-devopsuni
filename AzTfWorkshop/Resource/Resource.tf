provider "azurerm" {
    subscription_id = "eea916d7-7e27-4dfd-93f6-3a43f840e430"
    features {}
}

resource "azurerm_resource_group" "my_resource_group" {
    name = var.resource_group_name
    location = var.resource_group_location
    tags = {
        name = "Task1"
    }
}