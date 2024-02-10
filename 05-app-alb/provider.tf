terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.31.0"
    }
  }

  backend "s3" {
    bucket         = "nari-terraform-statefile-dev"
    key            = "roboshop-app-alb-dev"
    region         = "us-east-1"
    dynamodb_table = "terraform-statefile-lock-dev"
  }


}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}

