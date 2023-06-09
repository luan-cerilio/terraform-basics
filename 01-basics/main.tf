# About STATES
# DESIRED state is what I want to apply
# KNOW is what terraform has in the terraform.tfstate file
# ACTUAL is what is current running on the Cloud provider

terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~> 3.0"
    }
  }
}

provider "aws" {
    region = "us-east-1"
}