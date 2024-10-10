
resource "aws_s3_bucket" "bucket-tester_jqzqKeBByMELCPyN" {
  bucket = "bucket-tester"
}

resource "aws_s3_bucket_public_access_block" "bucket-tester_jqzqKeBByMELCPyN" {
  bucket                  = aws_s3_bucket.bucket-tester_jqzqKeBByMELCPyN.id
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_ownership_controls" "bucket-tester_jqzqKeBByMELCPyN" {
  bucket = aws_s3_bucket.bucket-tester_jqzqKeBByMELCPyN.id

  rule {
    object_ownership = "BucketOwnerEnforced"
  }
}

resource "aws_s3_bucket_versioning" "bucket-tester_jqzqKeBByMELCPyN" {
  bucket = aws_s3_bucket.bucket-tester_jqzqKeBByMELCPyN.id

  versioning_configuration {
    status = "Disabled"
  }
}
