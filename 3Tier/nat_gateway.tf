resource "aws_eip" "eip_nat" {
  vpc = ture

  tags = {
    Name = "eip1"
  }
}

resource "aws_nat_gateway" "nat_1" {
  subnet_id = aws_subnet.public-web-subnet-1.id
  subnet_id = aws_subnet.public-web-subnet-2.id
  allocation_id = aws_eip.eip_nat.id

  tags = {
    Name = "Nat1"
}
}
