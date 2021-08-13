terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 2.65"
    }
  }

  backend "remote" {
      organization = "learnterraformss"
      workspaces {
        name = "Example-Workspace"
      }
  }

  required_version = ">= 0.14.9"
}