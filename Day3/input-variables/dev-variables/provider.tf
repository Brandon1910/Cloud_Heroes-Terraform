terraform {
    required_version = "1.4.6"
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.0.1"
    }
  }
}




provider "aws" {
  region = "us-east-1"
  profile  = "prod-account"
}



