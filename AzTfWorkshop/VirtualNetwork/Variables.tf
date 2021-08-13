variable "virtual_network_name" {
    description = "Name of virtual network"
    type = string
}

variable "virtual_network_adress_space" {
    description = "Adress space of virtual network"
    type = string
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