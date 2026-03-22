
variable "environment" {
  default = "development"
}

variable "bucket_names" {
  default = [
    "core",
    "frontend",
    "backend",
    "analytics",
    "media"
  ]
}

resource "aws_s3_bucket" "demo" {
  for_each = toset(var.bucket_names)

  bucket = "vedant-${each.value}-${var.environment}"
}