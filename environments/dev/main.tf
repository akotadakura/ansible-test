terraform {
  required_version = ">=1.1"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">3.0"
    }
  }
}
provider "aws" {
  profile = "terraform"
  region  = "ap-northeast-1"
}

module "network" {
  source = "../../modules/network"
}
