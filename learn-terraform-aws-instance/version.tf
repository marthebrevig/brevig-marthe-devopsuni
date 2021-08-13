terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
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