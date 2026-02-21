provider "aws" {
    region = "ap-south-1"
  
  
}
resource "aws_instance" "apex" {
    ami = "ami-019715e0d74f695be"
    instance_type = "t3.micro"
    key_name = "hp-key"
    vpc_security_group_ids = [data.aws_default_security_group.default.id]
    tags = {
      name = "my_instance"
      env = "dev"
    }
}

data "aws_vpc" "default" {
    default = true
  
}

resource "aws_default_security_group" "default" {
    vpc_id = data.aws_vpc.default.id
}
