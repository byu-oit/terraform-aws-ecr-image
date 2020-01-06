provider "aws" {
  version = "~> 2.42"
  region  = "us-west-2"
}

module "ecr" {
  source = "git@github.com:byu-oit/terraform-aws-ecr?ref=v1.0.0"
  name = "test-ecr"
}

module "ecr_image" {
//  source = "git@github.com:byu-oit/terraform-aws-ecr-image?ref=v1.0.0"
  source = "../" // for local testing during module development
  dockerfile_dir = "docker/"
  ecr_repository_url = module.ecr.repository.repository_url
  docker_image_tag = "v2"
}
