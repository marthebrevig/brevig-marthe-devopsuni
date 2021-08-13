variable "virtual_network_name" {
    description = "Name of virtual network"
    type = string
    validation {
        condition = length(var.virtual_network_name)>8
        error_message = "The length of the virtual network name has to be longer than 8."
    }
}

variable "virtual_network_adress_space" {
    description = "Adress space of virtual network"
    type = string
    validation {
        condition = length(var.virtual_network_adress_space)>8
        error_message = "The length of the virtual network adress space has to be longer than 8."
    }
}

#variable "subnet_name" {
#    description = "Name of subnet"
#    type = string
#}

#variable "subnet_adress_space" {
#    description = "Adress space of subnet"
#    type = string
#}

variable "subnets"{
    description = "Name of the subnet"
    type = map(object({
        name = string
        address_space = list(string)
    }))
}