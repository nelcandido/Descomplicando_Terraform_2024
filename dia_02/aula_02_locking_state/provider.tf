terraform {
  backend "s3" {
    bucket = "descomplicando-terraform-statefiles"
    key    = "aula_state"
    region = "us-east-2"
    dynamodb_table = "descomplicando-terraform-2024"
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