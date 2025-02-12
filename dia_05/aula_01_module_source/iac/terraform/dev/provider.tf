terraform {
  backend "s3" {
    bucket = "descomplicando-terraform-statefiles"
    key    = "aula_modules_source_dev"
    region = "us-east-2"
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-2"
}