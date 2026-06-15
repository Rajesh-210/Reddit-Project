terraform {
  backend "s3" {
    bucket         = "jenkins-server-tf-state-274955213592"
    region         = "ap-south-1"
    key            = "EKS-DevSecOps-Tetris-Project/EKS-TF/terraform.tfstate"
    dynamodb_table = "jenkins-server-tf-state-lock"
    encrypt        = true
  }
  required_version = ">=0.13.0"
  required_providers {
    aws = {
      version = ">= 2.7.0"
      source  = "hashicorp/aws"
    }
  }
}
