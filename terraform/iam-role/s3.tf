resource "aws_s3_bucket" "test-bucket" {
  bucket = "test-bucket-241117"

  tags = {
    Name = "test-bucket"
  }
}