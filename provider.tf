terraform {
  required_providers {
    aws = {
      source = "registry.terraform.io/hashicorp/aws"
      version = "4.14.0"
    }
  }
}
provider "aws" {
  region = "us-east-2"
}
