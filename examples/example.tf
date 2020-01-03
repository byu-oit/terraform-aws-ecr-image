provider "aws" {
  version = "~> 2.42"
  region  = "us-west-2"
}

module "<module_name>" {
  source = "git@github.com:byu-oit/terraform-aws-<module_name>?ref=v1.0.0"
  #source = "../" # for local testing during module development
}
