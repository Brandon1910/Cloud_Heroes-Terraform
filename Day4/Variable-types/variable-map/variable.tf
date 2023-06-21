variable "dev_ami" {
    description = "dev_ami"
    type = string
    default = "ami-053b0d53c279acc90"
  
}

variable "dev_instance_type" {
    description = "dev_instance_type"
    type = map
    default = {
        dev = "t2.micro",
        prod = "t2.small",
        staging ="t2.nano"}
  
}