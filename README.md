# Terraform AWS ECR Image
Terraform module to build and upload a docker image to an ECR Repository.

This module will:
1. log into ECR
2. run `docker build` with your provided `dockerfile_dir` directory
3. push the built docker image to the ECR repository

## Usage
```hcl
module "ecr_image" {
  source = "github.com/byu-oit/terraform-aws-ecr-image?ref=v1.0.1"
  dockerfile_dir = "."
  ecr_repository_url = module.ecr.repository.repository_url
}
```

## Requirements
Terraform version 0.12.16 or greater.

This module requires the following programs in the PATH:
* `bash`
* `aws` CLI
* `docker` (with the daemon running)
* `md5` or `md5sum`

## Inputs
| Name | Description | Default |
| --- | --- | --- |
| dockerfile_dir | The directory that contains the Dockerfile. This module will run a `docker build` with this directory. | |
| ecr_repository_url | Full url for the ECR repository to push the built image to. | |
| docker_image_tag | This is the tag which will be used for the image that you created. | latest |

## Outputs
| Name | Description |
| --- | --- |
| ecr_image_url | Full URL to image in ECR with tag. |


Inspiration from [onnimonni/terraform-ecr-docker-build-module](https://github.com/onnimonni/terraform-ecr-docker-build-module).