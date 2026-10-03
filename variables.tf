variable "bucket_names" {
  description = "Names of S3 buckets to create"
  type        = set(string)
}

variable "lifecycle_days" {
  description = "Number of days before objects expire"
  type        = number
  default     = 7
}

variable "lifecycle_buckets" {
  description = "Buckets that should have lifecycle expiration"
  type        = set(string)
  default     = []
}
