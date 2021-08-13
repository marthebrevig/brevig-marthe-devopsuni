variable "resource_group_name" {
    description = "Name for the resource group"
    type = string
    default = "my_resource_group"
    validation {
        condition = length(var.resource_group_name)>8
        error_message = "The length of the resource group name has to be longer than 8."
    }
}

variable "resource_group_location" {
    description = "Location for the resource group"
    type = string 
    default = "westeurope"
    validation {
        condition = length(var.resource_group_location)>8
        error_message = "The length of the resource group location has to be longer than 8."
    }
}