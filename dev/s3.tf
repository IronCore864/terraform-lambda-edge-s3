resource "aws_s3_bucket" "lambda" {
  provider      = aws.us-east-1
  region        = "us-east-1"
  bucket        = "${var.naming_prefix}-lambda"
  force_destroy = true
}
