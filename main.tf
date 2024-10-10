
resource "aws_s3_bucket" "does-my-state-work_FJTRYE3zEPJAUUfi" {
  bucket = "does-my-state-work"
}

resource "aws_s3_bucket_public_access_block" "does-my-state-work_FJTRYE3zEPJAUUfi" {
  bucket                  = aws_s3_bucket.does-my-state-work_FJTRYE3zEPJAUUfi.id
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_ownership_controls" "does-my-state-work_FJTRYE3zEPJAUUfi" {
  bucket = aws_s3_bucket.does-my-state-work_FJTRYE3zEPJAUUfi.id

  rule {
    object_ownership = "BucketOwnerEnforced"
  }
}

resource "aws_s3_bucket_versioning" "does-my-state-work_FJTRYE3zEPJAUUfi" {
  bucket = aws_s3_bucket.does-my-state-work_FJTRYE3zEPJAUUfi.id

  versioning_configuration {
    status = "Disabled"
  }
}
