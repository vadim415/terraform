resource "aws_instance" "web" {
  ami           = "AMI-test"
  instance_type = "t2.nano"

  tags = {
    Name = "Our first server instance"
  }
}

resource "aws_vpc" "vpc1" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Description = "Our test VPC"
  }
}