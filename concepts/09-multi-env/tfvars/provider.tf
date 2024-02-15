terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.31.0" #AWS Provider version, not terraform
    }
  }
  # Each env has its one backend.tf
  # so nned not to give backend info in provider.tf
  # But  need backend block in provider.tf
  backend "s3" {

  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}