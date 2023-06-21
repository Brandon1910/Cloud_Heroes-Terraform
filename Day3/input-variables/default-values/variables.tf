variable "dev_ami" {
    description = "dev_ami"
    type = string
    default = "ami-053b0d53c279acc90"
  
}

variable "dev_instance_type" {
    description = "dev_instance_type"
    type = string
    default = "t2.micro"
  
}

variable "private_subnet_cidr_block" {
    description = "vpc_cidr"
    type = string
    default = "10.0.1.0/24"
  
}

