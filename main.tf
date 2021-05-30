locals {
  common_description = "Our description"
}

resource "aws_instance" "web" {

  for_each = toset(["1", "2", "3"])
  ami           = "AMI-${each.key}"
  instance_type = "t2.nano"

  tags = {
    Name = var.aws_instance_name
    Index = each.key
  }
}

resource "aws_vpc" "vpc1" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Description = local.common_description
  }
}