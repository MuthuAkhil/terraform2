provider "aws" {
  region = var.aws_region
}

terraform {
  backend "s3" {
    profile = "default"
    bucket  = "simpli-terraform-state-dev"
    key     = "CentOS/QA-terraform.tfstate" // variable
    region  = "us-east-2"
  }
}