
resource "aws_s3_bucket" "my-s3-bucket-a_4KRMmJP3SLA5bnCq" {
  bucket = "my-s3-bucket-a"
}

resource "aws_s3_bucket_public_access_block" "my-s3-bucket-a_4KRMmJP3SLA5bnCq" {
  bucket                  = aws_s3_bucket.my-s3-bucket-a_4KRMmJP3SLA5bnCq.id
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_ownership_controls" "my-s3-bucket-a_4KRMmJP3SLA5bnCq" {
  bucket = aws_s3_bucket.my-s3-bucket-a_4KRMmJP3SLA5bnCq.id

  rule {
    object_ownership = "BucketOwnerEnforced"
  }
}

resource "aws_s3_bucket_versioning" "my-s3-bucket-a_4KRMmJP3SLA5bnCq" {
  bucket = aws_s3_bucket.my-s3-bucket-a_4KRMmJP3SLA5bnCq.id

  versioning_configuration {
    status = "Disabled"
  }
}
