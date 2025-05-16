provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "codefluent_data" {
  bucket = "codefluent-data-${random_id.bucket_id.hex}"
  force_destroy = true
}

resource "random_id" "bucket_id" {
  byte_length = 4
}
