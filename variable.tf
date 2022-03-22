variable "cidr_block" {}
variable "tags" {
    type = map
}

variable "private_subnets_cidr" {
    type = list
}

variable "public_subnets_cidr" {
    type = list
}
variable "create_internet_gateway_route" {
  description = "Controls if an internet gateway route for public access is set"
  type        = bool
  default     = true
}
variable "enable_nat_gateway" {
  description = "Should be true if you want to provision NAT Gateways for each of your private networks"
  type        = bool
  default     = true
}