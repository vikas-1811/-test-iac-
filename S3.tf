resource "aws_s3_bucket" "unrestricted" {
  bucket = "vikas-test"
  #zpc-skip-policy: ZS-AWS-00026:testing
  acl    = "public-read-write"
  versioning {
    enabled = true
  }
  logging {
    target_bucket = aws_s3_bucket.log_bucket.id
    target_prefix = "log/test/s3"
    }
}
