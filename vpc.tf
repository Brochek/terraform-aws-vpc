resource "aws_vpc" "main" {
  cidr_block = var.cidr_block
  tags = var.tags
  enable_nat_gateway = true
}


