generate_hcl "_terramate_generated_providers.tf" {
  content {
    provider "aws" {
      region  = global.terraform_aws_provider_region
      
      # Code to work with localstack
      access_key                  = "mock_access_key"
      secret_key                  = "mock_secret_key"

      skip_credentials_validation = true
      skip_metadata_api_check     = true

      s3_force_path_style         = true

      endpoints {
        s3  = "http://localhost:4566"
        sts  = "http://localhost:4566"
      }
    }

    terraform {
      required_providers {
        aws = {
          source  = "hashicorp/aws"
          version = global.terraform_aws_provider_version
        }
      }
    }

    terraform {
      required_version = global.terraform_version
    }
  }
}