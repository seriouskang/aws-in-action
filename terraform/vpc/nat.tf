resource "aws_eip" "nat" {
  domain = "vpc"
}

resource "aws_nat_gateway" "natgw" {
  allocation_id = aws_eip.nat.id
  subnet_id = aws_subnet.main-public-1.id
  depends_on = [ aws_internet_gateway.main-igw ]
}