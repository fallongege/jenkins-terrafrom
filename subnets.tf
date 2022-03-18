locals {
  availability_zones = "${var.region}a"
}

resource "aws_subnet" "public-subnet" {
  vpc_id            = aws_vpc.dev-vpc.id
  cidr_block        = var.cidr_blocks[1].cidr_block
  availability_zone = local.availability_zones
  tags = {
    Name = "${lower(var.environment)}-public"
  }
}
resource "aws_subnet" "private-subnet" {
  vpc_id            = aws_vpc.dev-vpc.id
  cidr_block        = var.cidr_blocks[2].cidr_block
  availability_zone = local.availability_zones

  tags = {
    Name = "${lower(var.environment)}-private"
  }
}