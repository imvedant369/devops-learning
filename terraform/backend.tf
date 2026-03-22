terraform {
  backend "s3" {
    bucket = "vedant-terraform-state-001"
    key    = "devops-learning/terraform.tfstate"
    region = "us-east-1"
  }
}