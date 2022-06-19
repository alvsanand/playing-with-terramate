stack {
  name = "S3 Bucket"

  after = [
    "/stacks/dev/s3"
  ]
}