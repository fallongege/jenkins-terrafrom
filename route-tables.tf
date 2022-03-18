resource "aws_route_table" "dev-publicRT" {
  vpc_id = aws_vpc.dev-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.devvpc-IGW.id
  }

  tags = {
    Name = "${var.environment}-publicRT"
  }
}
resource "aws_route_table_association" "dev-publicRT-ass" {
  subnet_id      = aws_subnet.public-subnet.id
  route_table_id = aws_route_table.dev-publicRT.id
}

resource "aws_route_table" "dev-privateRT" {
  vpc_id = aws_vpc.dev-vpc.id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.dev-natgateway.id
  }
  tags = {
    Name = "${var.environment}-privateRT"
  }
}
resource "aws_route_table_association" "dev-privateRT-ass" {
  subnet_id      = aws_subnet.private-subnet.id
  route_table_id = aws_route_table.dev-privateRT.id
}
