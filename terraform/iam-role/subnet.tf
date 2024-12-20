resource "aws_subnet" "main-public-1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.1.0/24"
  map_public_ip_on_launch = "true"
  availability_zone = "ap-northeast-1a"

  tags = {
    Name = "main-public-1"
  }
}