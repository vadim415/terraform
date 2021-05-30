resource "aws_instance" "web" {
  ami           = "AMI-test"
  instance_type = "t2.micro"

  tags = {
    Name = "Our first server instance"
  }
}