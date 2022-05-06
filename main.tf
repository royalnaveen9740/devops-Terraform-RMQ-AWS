provider "aws" {
  region  = "ap-south-1"
  profile = var.profile
}

resource "aws_instance" "rmq" {
  ami                    = ""
  instance_type          = "t2.micro"
  key_name               = "rabbitmq"
  vpc_security_group_ids = ["sg-04d346cfcdc58b87e"]

  tags = {
    Name = var.name
    Group  = var.group
  }
}