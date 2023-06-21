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
  region = "us-east-2"
  profile = "dev-account"
  alias = "dev-env"
}


provider "aws" {
  region = "us-east-1"
  profile  = "prod-account"
  alias = "prod-env"
}


# Development instance 

resource "aws_instance" "dev-vm" {
  ami           = "ami-01107263728f3bef4"
  instance_type = "t2.micro"
  provider = aws.dev-env
  count = 2

  tags = {
    Account = "dev-account"
    Name = "HelloWorld"
  }
}

# production VM

resource "aws_instance" "prod-vm" {
  ami           = "ami-0715c1897453cabd1"
  instance_type = "t2.micro"
  provider = aws.prod-env
  count = 2

  tags = {
    Account = "prod-account"
    Name = "HelloWorld"
  }
}