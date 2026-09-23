terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "practice" {
  bucket = "cholpon-terraform-practice-12345"

  tags = {
    Name        = "Terraform Practice"
    Environment = "dev"
  }
}