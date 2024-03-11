terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket = "terraform-foodieflow-db"
    key    = "rds/terraform.tfstate"
    region = "us-east-1"
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = var.regionDefault
}
