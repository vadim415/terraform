variable "aws_instance_name" {
  default = "Default Instance name"
  description = "Tag name for AWS instance"
}

variable "github_token" {
  description = "OAuth token to authorize Github access"
}

variable "github_owner" {
  description = "Github nickname"
}