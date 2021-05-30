output "aws_instance_ids" {
  value = aws_instance.web["1"].id
}