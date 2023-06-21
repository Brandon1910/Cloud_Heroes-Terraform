# Development instance 


resource "aws_instance" "dev-vm" {
  ami           = var.dev_ami
  instance_type = var.dev_instance_type[2]
  key_name = "cha-key"
  vpc_security_group_ids = ["sg-029cb6190259bd672"]
 # count = 2

  tags = {
    Account = "dev-account"
    Name = "HelloWorld"
  }
}