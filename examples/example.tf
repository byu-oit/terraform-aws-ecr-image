provider "aws" {
  version = "~> 2.42"
  region  = "us-west-2"
}

module "ecr_image" {
  source = "git@github.com:byu-oit/terraform-aws-ecr-image?ref=v1.0.0"
  #source = "../" # for local testing during module development
}
