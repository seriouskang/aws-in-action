variable "AWS_REGION" {
  default = "ap-northeast-1"
}

variable "AMIS" {
  type = map(string)
  default = {
    ap-northeast-1 = "ami-0a0b7b240264a48d7"
    foo            = "bar"
  }
}