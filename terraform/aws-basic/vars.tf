variable "AWS_ACCESS_KEY" {}
variable "AWS_SECRET_KEY" {}
variable "AWS_REGION" {
  default = "ap-northeast-1"
}

variable "PATH_TO_PRIAVTE_KEY" {
  default = "test-key"
}

variable "PATH_TO_PUBLIC_KEY" {
  default = "test-key.pub"
}

variable "LOCAL_CIDR_BLOCKS" {}

variable "AMIS" {
  type = map(string)
  default = {
    ap-northeast-1 = "ami-0a0b7b240264a48d7"
    foo            = "bar"
  }
}