terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.48.0"
    }
  }
  
  # romate state storage location
  backend "s3" {
    bucket         = "daw84s-store-dev-new"
    key            = "roboshop-databases.tfstate"
    region         = "us-east-1"
    encrypt        = true
    use_lockfile   = true # enables native s3 state locking (terrform 1.10+)
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}