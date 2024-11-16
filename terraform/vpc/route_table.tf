resource "aws_route_table" "main-public" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.main-igw.id
  }

  tags = {
    Name = "main-public-1"
  }
}

resource "aws_route_table_association" "main-public-1-a" {
  subnet_id = aws_subnet.main-public-1.id
  route_table_id = aws_route_table.main-public.id
}

resource "aws_route_table_association" "main-public-2-a" {
  subnet_id = aws_subnet.main-public-2.id
  route_table_id = aws_route_table.main-public.id
}