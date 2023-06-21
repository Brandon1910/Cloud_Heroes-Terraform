# Development instance 


resource "aws_instance" "dev-vm" {
  ami           = "ami-053b0d53c279acc90"
  instance_type = "t2.micro"
  key_name = "cha-key"
  vpc_security_group_ids = ["sg-029cb6190259bd672"]
 # count = 2

  tags = {
    Account = "dev-account"
    Name = "HelloWorld"
  }
}