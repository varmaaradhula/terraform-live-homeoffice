terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "eu-west-2"
}

provider "vault" {
  address          = "http://18.135.105.242:8200/"
  skip_child_token = true

  auth_login {
    path = "auth/approle/login"

    parameters = {
      role_id   = "f151d2c0-bddc-34c3-9f39-5ee8e4f8a55c"
      secret_id = "98243369-1ced-1b85-fd73-69afeecb37bb"
    }
  }
}