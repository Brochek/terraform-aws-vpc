resource "aws_nat_gateway" "main1" {
  connectivity_type = "private"
  subnet_id         = var.aws_subnet.private[*].id
    
    tags = {
        Name = "main1"
  }

}