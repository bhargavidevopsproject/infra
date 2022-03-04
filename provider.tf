provider "aws" {
  region = var.region
}

terraform {

  backend "s3" {
    bucket = "bhargavi-devops-s3"
    key    = "mystate.tfstate"
    region = "eu-west-2"
    # dynamodb_table = "mydynamo-tf-state-lock"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}