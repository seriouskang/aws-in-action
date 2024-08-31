variable "AWS_ACCESS_KEY" {}
variable "AWS_SECRET_KEY" {}

variable "AWS_REGION" {
  default = "ap-northeast-1"
}

variable "PATH_TO_PRIVATE_KEY" {}
variable "INSTANCE_USERNAME" {
    default = "ubuntu"
}

variable "AMIS" {
  type = map(string)
  default = {
    ap-northeast-1 = "ami-0a0b7b240264a48d7"
    foo            = "bar"
  }
}