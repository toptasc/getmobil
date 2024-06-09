
resource "aws_eip" "nat" {
  domain   = "vpc"

  tags = {
    Name = "nat"
  }
}

resource "aws_nat_gateway" "EKS-nat" {
  allocation_id = aws_eip.nat.id
  subnet_id     = aws_subnet.public-1a.id

  tags = {
    Name = "k8s-nat"
  }

  depends_on = [aws_internet_gateway.EKSvpc-igw]
}