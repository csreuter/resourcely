
resource "aws_s3_bucket" "dsdas_NWXLDR555yY5qYHT" {
  bucket = "dsdas"
}

resource "aws_s3_bucket_public_access_block" "dsdas_NWXLDR555yY5qYHT" {
  bucket                  = aws_s3_bucket.dsdas_NWXLDR555yY5qYHT.id
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_ownership_controls" "dsdas_NWXLDR555yY5qYHT" {
  bucket = aws_s3_bucket.dsdas_NWXLDR555yY5qYHT.id

  rule {
    object_ownership = "BucketOwnerEnforced"
  }
}

resource "aws_s3_bucket_versioning" "dsdas_NWXLDR555yY5qYHT" {
  bucket = aws_s3_bucket.dsdas_NWXLDR555yY5qYHT.id

  versioning_configuration {
    status = "Disabled"
  }
}
