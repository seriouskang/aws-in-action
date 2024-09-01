terraform {
  backend "s3" {
    bucket = "terraform-state-240901"
    key = "terraform/state-with-S3"
  }
}