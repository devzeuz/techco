provider "aws" {
  region = us-east-1
}

terraform {
  cloud {
    organization = "practice-lab-3tier"

    workspaces {
      name = "techco"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.100.0"
    }
  }

  required_version = ">= 1.5.0"
}