terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.31.0" #AWS Provider version, not terraform
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}