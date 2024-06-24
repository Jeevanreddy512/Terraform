#source = https://medium.com/@midejoseph24/create-a-highly-available-3-tier-architecture-using-terraform-fd426f152708

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.vpc_01.id

  tags {
   Name = "VPC_01-IGW"
  }
}
