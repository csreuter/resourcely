
resource "aws_s3_bucket" "s3-bucket_HJ52K8AjEBH2hpxp" {
  bucket = "s3-bucket"
}

resource "aws_s3_bucket_public_access_block" "s3-bucket_HJ52K8AjEBH2hpxp" {
  bucket                  = aws_s3_bucket.s3-bucket_HJ52K8AjEBH2hpxp.id
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_ownership_controls" "s3-bucket_HJ52K8AjEBH2hpxp" {
  bucket = aws_s3_bucket.s3-bucket_HJ52K8AjEBH2hpxp.id

  rule {
    object_ownership = "BucketOwnerEnforced"
  }
}

resource "aws_s3_bucket_versioning" "s3-bucket_HJ52K8AjEBH2hpxp" {
  bucket = aws_s3_bucket.s3-bucket_HJ52K8AjEBH2hpxp.id

  versioning_configuration {
    status = "Disabled"
  }
}
