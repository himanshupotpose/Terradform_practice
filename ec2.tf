provider "aws" {
    region = "ap-south-1"
  
  
}
resource "aws_ec2_instance" "apex" {
    ami = "ami-019715e0d74f695be"
    instance_type = "t3.micro"
    key-name = "hp-key"
    vpc_security_group_ids = [data.aws_vpc.default.id]
}

data "aws_vpc" "default" {
    default = true
  
}
