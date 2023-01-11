terraform {
  backend s3 {}
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region = "eu-west-1"
}

#provider "aws" {
#  alias = "nVirginia-region"
#  region = "us-east-1"
#}