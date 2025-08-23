terraform {
  backend "s3" {
    bucket         = "juyel_githubaction"
    key            = "ec2/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
  }
}

provider "aws" {
  region = var.region
}
