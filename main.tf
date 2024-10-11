
resource "aws_s3_bucket" "s3-biucket_i5qXrMaZRUQSWaFu" {
  bucket = "s3-biucket"
}

resource "aws_s3_bucket_public_access_block" "s3-biucket_i5qXrMaZRUQSWaFu" {
  bucket                  = aws_s3_bucket.s3-biucket_i5qXrMaZRUQSWaFu.id
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_ownership_controls" "s3-biucket_i5qXrMaZRUQSWaFu" {
  bucket = aws_s3_bucket.s3-biucket_i5qXrMaZRUQSWaFu.id

  rule {
    object_ownership = "BucketOwnerEnforced"
  }
}

resource "aws_s3_bucket_versioning" "s3-biucket_i5qXrMaZRUQSWaFu" {
  bucket = aws_s3_bucket.s3-biucket_i5qXrMaZRUQSWaFu.id

  versioning_configuration {
    status = "Disabled"
  }
}
