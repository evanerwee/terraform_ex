terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }

  required_version = ">= 0.13"
}

provider "aws" {
  region  = "${var.region}"
  profile = "${var.profile}"
}

module "s3" {
    source = "./s3"
    #bucket name should be unique
    bucket_name = "<Bucket-name>"       
}
