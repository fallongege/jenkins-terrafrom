resource "aws_vpc" "dev-vpc" {
  cidr_block           = var.cidr_blocks[0].cidr_block
  enable_dns_hostnames = true
  tags = {
    "Name" = "${lower(var.environment)}-vpc"
  }
}