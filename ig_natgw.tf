resource "aws_internet_gateway" "devvpc-IGW" {
  vpc_id = aws_vpc.dev-vpc.id

  tags = {
    Name = "${lower(var.environment)}-IGW"
  }
}

resource "aws_eip" "eip-nat" {
  depends_on = [aws_internet_gateway.devvpc-IGW]
  vpc        = true
}

resource "aws_nat_gateway" "dev-natgateway" {
  allocation_id = aws_eip.eip-nat.id
  subnet_id     = aws_subnet.public-subnet.id
  depends_on    = [aws_internet_gateway.devvpc-IGW]

  tags = {
    "Name" = "${lower(var.environment)}-NTGW"
  }
}