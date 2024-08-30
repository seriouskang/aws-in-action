variable "AWS_ACCESS_KEY" {}
variable "AWS_SECRET_KEY" {}
variable "AWS_REGION" {
  default = "ap-northeast-1"
}
variable "AMIS" {
  type = map
  default = {
    ap-northeast-1 = "ami-0a0b7b240264a48d7"
    foo            = "bar"
  }
}