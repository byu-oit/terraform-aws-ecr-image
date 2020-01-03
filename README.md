# Terraform Module Template
GitHub template to quick start creating terraform templates

## To Use Template
1. Click the "Use this template" button 
2. Name your terraform module repo as `terraform-aws-<module_name>` (if creating non-AWS module change `aws` to the cloud provider)
3. Rename this README's title to the title you named your repo in #2 
4. Update this README to match the module's title (in the usage section)
5. Update `example/example.tf` to match the module's title
6. Remove this section from the README

 
## Usage
```hcl
module "<module_name>" {
  source = "git@github.com:byu-oit/terraform-aws-<module_name>?ref=v1.0.0"
}
```

## Inputs
| Name | Description | Default |
| --- | --- | --- |
| | |

## Outputs
| Name | Description |
| --- | --- |
| | |
