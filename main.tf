
resource "aws_s3_bucket" "s3-bucket-ftw_K6ZkF86w4RPxYCfe" {
  bucket = "s3-bucket-ftw"
}

resource "aws_s3_bucket_public_access_block" "s3-bucket-ftw_K6ZkF86w4RPxYCfe" {
  bucket                  = aws_s3_bucket.s3-bucket-ftw_K6ZkF86w4RPxYCfe.id
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_ownership_controls" "s3-bucket-ftw_K6ZkF86w4RPxYCfe" {
  bucket = aws_s3_bucket.s3-bucket-ftw_K6ZkF86w4RPxYCfe.id

  rule {
    object_ownership = "BucketOwnerEnforced"
  }
}

resource "aws_s3_bucket_versioning" "s3-bucket-ftw_K6ZkF86w4RPxYCfe" {
  bucket = aws_s3_bucket.s3-bucket-ftw_K6ZkF86w4RPxYCfe.id

  versioning_configuration {
    status = "Enabled"
  }
}
