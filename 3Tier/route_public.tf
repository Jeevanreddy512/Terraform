#source = https://medium.com/@midejoseph24/create-a-highly-available-3-tier-architecture-using-terraform-fd426f152708

resource "aws_route_table" "public_route_table" {
  vpc_id = aws_vpc.vpc_01.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
    }

  tags = {
    Name = "Public Route Table"
    }
}

resource "aws_route_table_association" "public-subnet-1-route-table-association" {
  route_table_id = aws_rotute_table.public_route_table.id
  subnet_id = aws_subnet.public-web-subnet-1.id
}
resource "aws_route_table_association" "public-subnet-2-route-table-association" {
  route_table_id = aws_rotute_table.public_route_table.id
  subnet_id = aws_subnet.public-web-subnet-2.id
}
