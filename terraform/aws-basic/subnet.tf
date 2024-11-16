resource "aws_subnet" "main-public-1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.1.0/24"
  map_public_ip_on_launch = "true"
  availability_zone = "ap-northeast-1a"

  tags = {
    Name = "main-public-1"
  }
}

resource "aws_subnet" "main-public-2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.2.0/24"
  map_public_ip_on_launch = "true"
  availability_zone = "ap-northeast-1c"

  tags = {
    Name = "main-public-2"
  }
}

resource "aws_subnet" "main-private-1" {
    vpc_id     = aws_vpc.main.id
    cidr_block = "10.0.3.0/24"
    map_public_ip_on_launch = "false"
    availability_zone = "ap-northeast-1a"

    tags = {
        Name = "main-priavte-1"
    }
}

resource "aws_subnet" "main-priavte-2" {
    vpc_id = aws_vpc.main.id
    cidr_block = "10.0.4.0/24"
    map_public_ip_on_launch = "false"
    availability_zone = "ap-northeast-1c"

    tags = {
      Name = "main-priavte-2"
    }
}