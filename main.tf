terraform {

  required_version = "~> 0.12.30"
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "rodrigodojo"

    workspaces {
      name = "default"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}