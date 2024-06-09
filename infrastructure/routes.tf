resource "aws_route_table" "private" {
  vpc_id = aws_vpc.EKSvpc.id

  route {
      cidr_block                 = "0.0.0.0/0"
      nat_gateway_id             = aws_nat_gateway.EKS-nat.id
    }

  tags = {
    Name = "private"
  }
}

resource "aws_route_table" "public" {
  vpc_id = aws_vpc.EKSvpc.id

  route {
      cidr_block                 = "0.0.0.0/0"
      gateway_id                 = aws_internet_gateway.EKSvpc-igw.id
    }

  tags = {
    Name = "public"
  }
}


# routing table association

resource "aws_route_table_association" "private-us-east-1a" {
  subnet_id      = aws_subnet.private-1a.id
  route_table_id = aws_route_table.private.id
}
resource "aws_route_table_association" "private-us-east-1b" {
  subnet_id      = aws_subnet.private-1b.id
  route_table_id = aws_route_table.private.id
}
resource "aws_route_table_association" "public-us-east-1a" {
  subnet_id      = aws_subnet.public-1a.id
  route_table_id = aws_route_table.public.id
}
resource "aws_route_table_association" "public-us-east-1b" {
  subnet_id      = aws_subnet.public-1b.id
  route_table_id = aws_route_table.public.id
}