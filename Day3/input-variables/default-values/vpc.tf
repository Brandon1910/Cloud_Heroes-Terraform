resource "aws_vpc" "dev_vpc" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "dev_vpc"
  }



}
  #dev public subnet
 #To reference = resource_name.resource_logical_name.id
  resource "aws_subnet" "dev_public_subnet" {
  vpc_id     = aws_vpc.dev_vpc.id
  cidr_block = "10.0.0.0/24"

  tags = {
    Name = "dev_public_subnet"
  }
}

 #dev private subnet
 #To reference = resource_name.resource_logical_name.id
  resource "aws_subnet" "dev_private_subnet" {
  vpc_id     = aws_vpc.dev_vpc.id
  cidr_block = var.private_subnet_cidr_block

  tags = {
    Name = "dev_private_subnet"
  }
}