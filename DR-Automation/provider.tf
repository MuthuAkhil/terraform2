provider "aws" {
  region = var.region
}


terraform {
  backend "s3" {
    profile = "default"
    bucket  = "simpli-terraform-state-dev"
    key     = "DR/db-terraform.tfstate" // variable
    region  = "us-east-2"
  }
}
