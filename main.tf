resource "aws_s3_bucket" "this" {
  for_each = var.bucket_names

  bucket = each.value
}

resource "aws_s3_bucket_lifecycle_configuration" "this" {
  for_each = var.lifecycle_buckets

  bucket = aws_s3_bucket.this[each.value].id

  rule {
    id     = "expiration"
    status = "Enabled"


    filter {}

    expiration {

      days = var.lifecycle_days

    }
  }
}


