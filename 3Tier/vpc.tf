#SOURCE = https://medium.com/@midejoseph24/create-a-highly-available-3-tier-architecture-using-terraform-fd426f152708
resource "aws_vpc" "vpc_01" {
  cidr_block = var.vpc_cidr
  instance_tenancy = "default"
  enable_dns_hostnames = true

  tags = {
    name = "central-network"
  }
}
