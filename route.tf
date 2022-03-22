resource "aws_route_table" "nat-route" {
    subnet_id = var.aws_subnet.private[*].id
}
resource "aws_route" "nat-route" {
  route_table_id         = aws_route_table.nat-route.id
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = aws_nat_gateway.main1.id
}


data "aws_route_table" "main" {
  subnet_id = var.aws_subnet.public[*].id
}
resource "aws_route" "route" {
  route_table_id            = data.aws_route_table.main.id
  destination_cidr_block    = "0.0.0.0/0"
}