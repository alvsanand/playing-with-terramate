globals {
  # Terraform
  terraform_version = "1.2.3"

  terraform_aws_provider_version     = "4.19.0"
  terraform_aws_provider_region      = "eu-west-1"

  local_tfstate_path = "terraform.tfstate"

  # Globals    
  region      = global.terraform_aws_provider_region
}