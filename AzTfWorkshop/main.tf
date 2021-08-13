provider "azurerm" {
    subscription_id = "eea916d7-7e27-4dfd-93f6-3a43f840e430"
    features {}
}

module "my_first_module" {
    source = ".//Resource"
}

module "my_second_module" {
    source = ".//VirtualNetwork"
    virtual_network_name = "testingvn"
    virtual_network_adress_space = "10.0.0.0/16"
    subnets = {
        "subnet1" = {
            name = "testing1"
            address_space = ["10.0.0.0/24"]
        }
        "subnet2" = {
            name = "testing2"
            address_space = ["10.0.1.0/24"]
        }
        "subnet3" = {
            name = "testing3"
            address_space = ["10.0.2.0/24"]
        }
    }
}
