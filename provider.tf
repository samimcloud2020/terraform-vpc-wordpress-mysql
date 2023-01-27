terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region     = "us-east-1"

  # Assign the profile name here!
  profile = "default"
  }

  data "aws_availability_zones" "available" {
  state = "available"
}
  data "aws_region" "current" {}