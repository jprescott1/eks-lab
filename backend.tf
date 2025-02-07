terraform {
  backend "s3" {
    bucket         = "jprescott1-terraform-state"
    key            = "eks/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "terraform-lock"
  }
}