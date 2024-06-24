#source = https://medium.com/@midejoseph24/create-a-highly-available-3-tier-architecture-using-terraform-fd426f152708

resource "aws_subnet" "public-web-subnet-1" {
  vpc_id = aws_vpc.vpc_01.id
  cidr_block = var.public-web-subnet-1-cidr
  availability_zone = "us-east-1a"
  map_public_ip_on_launch = true

  tags = {
    Name = "public-web-subnet-1"
    }
  }

resource "aws_subnet" "public-web-subnet-2" {
  vpc_id = aws_vpc.vpc_01.id
  cidr_block = var.public-web-subnet-2-cidr
  region = "us-east-1b"
  map_public_ip_on_launch = true

  tags = {
    Name = "public-web-subnet-2"
    }
  }

####### PRIVATE SUBNETS #############
resource "aws_subnet" "private-app-subnet-1" {
  vpc_id = aws_vpc.vpc_01.id
  cidr_block = var.private-app-subnet-1-cidr
  region = "us-east-1a"
  map_public_ip_on_launch = false

  tags = {
    Name = "private-app-subnet-1"
    }
  }

resource "aws_subnet" "private-app-subnet-2" {
  vpc_id = aws_vpc.vpc_01.id
  cidr_block = var.private-app-subnet-2-cidr
  region = "us-east-1b"
  map_public_ip_on_launch = false

  tags = {
    Name = "private-app-subnet-2"
    }
  }

####### DB SUBNETS #############
resource "aws_subnet" "private-db-subnet-1" {
  vpc_id = aws_vpc.vpc_01.id
  cidr_block = var.private-db-subnet-1-cidr
  region = "us-east-1a"
  map_public_ip_on_launch = false

  tags = {
    Name = "private-DB-subnet-1"
    }
  }

resource "aws_subnet" "private-db-subnet-2" {
  vpc_id = aws_vpc.vpc_01.id
  cidr_block = var.private-db-subnet-2-cidr
  region = "us-east-1b"
  map_public_ip_on_launch = false

  tags = {
    Name = "private-DB-subnet-2"
    }
  }
