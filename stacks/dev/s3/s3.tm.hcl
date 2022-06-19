globals {
  bucket_name = tm_format("playing-with-terragamte-%s", global.environment)
}

generate_hcl "_terramate_generated_s3.tf" {
  content {
    resource "aws_s3_bucket" "main" {
      bucket = global.bucket_name

      tags = {
        Name        = global.bucket_name
        Environment = global.environment
      }
    }

    resource "aws_s3_bucket_acl" "main" {
      bucket = aws_s3_bucket.main.id
      acl    = "private"
    }
  }
}