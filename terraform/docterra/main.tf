# main.tf
terraform {
  required_providers {
    docker = {
      source = "kreuzwerker/docker"
      version = "~> 2.16"
    }
  }
}

provider "docker" {}