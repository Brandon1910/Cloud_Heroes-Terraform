variable "dev_ami" {
    description = "dev_ami"
    type = string
    default = "ami-053b0d53c279acc90"
  
}

variable "dev_instance_type" {
    description = "dev_instance_type"
    type = list(string)
    default = ["t2.micro","t2.small","t2.nano"]
  
}