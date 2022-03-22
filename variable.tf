variable "cidr_block" {}
variable "tags" {
    type = map
}

variable "private_subnets_cidr" {
    description = "A list of private subnets inside the VPC"
    type = list
}

variable "public_subnets_cidr" {
    description = "A list of public subnets inside the VPC"
    type = list
}

variable "enable_nat_gateway" {
  description = "Should be true if you want to provision NAT Gateways for each of your private networks"
  type        = bool
  default     = true
}