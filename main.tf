module "github" {
  source = "./github"
  github_owner = "it-discovery"
  github_token = "some_invalid_token"
}

module "aws" {
  source = "./aws"
}