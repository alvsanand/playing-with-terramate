// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT
// TERRAMATE: originated from generate_hcl block on /stacks/providers.tm.hcl

provider "aws" {
  access_key                  = "mock_access_key"
  region                      = "eu-west-1"
  s3_force_path_style         = true
  secret_key                  = "mock_secret_key"
  skip_credentials_validation = true
  skip_metadata_api_check     = true
  endpoints {
    s3  = "http://localhost:4566"
    sts = "http://localhost:4566"
  }
}
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.19.0"
    }
  }
}
terraform {
  required_version = "1.2.3"
}
