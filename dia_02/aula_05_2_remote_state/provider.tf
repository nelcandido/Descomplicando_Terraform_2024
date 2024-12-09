terraform {
  backend "s3" {
    bucket = "descomplicando-terraform-statefiles"
    key    = "aula_outputs_e_terraform_remote_state"
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