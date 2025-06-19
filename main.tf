provider "aws" {
  region = "ap-northeast-2"
}

resource "aws_s3_bucket" "example" {
  bucket = "prisma-test-bucket-1234567890"
}