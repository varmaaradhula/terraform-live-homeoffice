terraform {
  backend "s3" {
    bucket         = "varma-tf-state-bucket"
    key            = "prod/terraform.tfstate"
    region         = "eu-west-2"
    encrypt        = true
    dynamodb_table = "terraform-locks"
  }
}