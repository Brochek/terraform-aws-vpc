output vpc_id {
    value = aws_vpc.main.id
}

output public_subnets_id {
   value = var.aws_subnet.public[*].id
}

output private_subnets_id {
   value = var.aws_subnet.private[*].id
}

output route_table_id {
    value = aws_route_table.nat-route.id
}

output "nat_gateway_route_id" {
  description = "ID of the private nat gateway route"
  value       = aws_route_table.nat-route.id
}