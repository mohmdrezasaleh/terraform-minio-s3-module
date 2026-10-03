output "bucket_names" {
  description = "Name of the created S3 buckets"
  value       = [for bucket in aws_s3_bucket.this : bucket.bucket]

}
