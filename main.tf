
resource "aws_s3_bucket" "test_iHqLDV2SY4heG94T" {
  bucket = "test"
}

resource "aws_s3_bucket_public_access_block" "test_iHqLDV2SY4heG94T" {
  bucket                  = aws_s3_bucket.test_iHqLDV2SY4heG94T.id
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_ownership_controls" "test_iHqLDV2SY4heG94T" {
  bucket = aws_s3_bucket.test_iHqLDV2SY4heG94T.id

  rule {
    object_ownership = "BucketOwnerEnforced"
  }
}

resource "aws_s3_bucket_versioning" "test_iHqLDV2SY4heG94T" {
  bucket = aws_s3_bucket.test_iHqLDV2SY4heG94T.id

  versioning_configuration {
    status = "Suspended"
  }
}
