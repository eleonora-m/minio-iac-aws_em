terraform {
  required_version = ">= 1.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  # Раскомментируй после того, как создашь бакет вручную или отдельным скриптом
  # backend "s3" {
  #   bucket         = "my-minio-tf-state"
  #   key            = "prod/minio/terraform.tfstate"
  #   region         = "us-east-1"
  #   dynamodb_table = "terraform-lock"
  # }
}

provider "aws" {
  region = var.aws_region
}