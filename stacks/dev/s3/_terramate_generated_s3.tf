// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT
// TERRAMATE: originated from generate_hcl block on /stacks/dev/s3/s3.tm.hcl

resource "aws_s3_bucket" "main" {
  bucket = "playing-with-terragamte-dev"
  tags = {
    Name        = "playing-with-terragamte-dev"
    Environment = "dev"
  }
}
resource "aws_s3_bucket_acl" "main" {
  acl    = "private"
  bucket = aws_s3_bucket.main.id
}
