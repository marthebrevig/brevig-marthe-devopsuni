provider "azurerm" {
    subscription_id = "eea916d7-7e27-4dfd-93f6-3a43f840e430"
    features {}
}

terraform {
    required_version = "~>1.0.3"
    required_providers {
        azurerm={
            version = "~> 2.0"
            source = "hashicorp/azurerm"
        }
    }
}