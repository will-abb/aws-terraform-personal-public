
terraform {
  required_version = ">= 0.14.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  backend "s3" {
    bucket         = "prod-terraform-backend-2023"
    key            = "prod/iam/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}

provider "aws" {
  region = "us-east-1"

  default_tags {
    tags = {
      environment = "production"
      managed     = "terraform"
      repo        = "https://git-codecommit.us-east-1.amazonaws.com/v1/repos/aws-terraform-personal"
    }
  }
}
