terraform {
  required_version = ">= 0.14.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
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

module "terraform_backend_bucket" {
  source = "terraform-aws-modules/s3-bucket/aws"
  bucket = "prod-terraform-backend-2023"

  versioning = {
    enabled = true

  }
  server_side_encryption_configuration = {
    rule = {
      apply_server_side_encryption_by_default = {
        sse_algorithm = "AES256"
      }
    }
  }
}

resource "aws_s3_bucket_policy" "prevent_delete" {
  bucket = module.terraform_backend_bucket.s3_bucket_id

  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Effect    = "Deny",
        Principal = "*",
        Action    = "s3:DeleteBucket",
        Resource  = "arn:aws:s3:::${module.terraform_backend_bucket.s3_bucket_id}",
        Condition = {
          StringNotEquals = {
            "aws:username" : "your-username"
          }
        }
      }
    ]
  })
}
