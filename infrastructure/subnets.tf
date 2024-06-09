resource "aws_subnet" "public-1a" {
  vpc_id     = aws_vpc.EKSvpc.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "us-east-1a"
  map_public_ip_on_launch = true

  tags = {
    Name = "public_subnet-1a"
    "kubernetes.io/role/internal-elb" = "1"
    "kubernetes.io/cluster/demo"      = "owned"
  }
}

resource "aws_subnet" "public-1b" {
  vpc_id     = aws_vpc.EKSvpc.id
  cidr_block = "10.0.32.0/24"
  availability_zone = "us-east-1b"
  map_public_ip_on_launch = true

  tags = {
    Name = "public_subnet-1b"
    "kubernetes.io/role/internal-elb" = "1"
    "kubernetes.io/cluster/demo"      = "owned"
  }
}

resource "aws_subnet" "private-1a" {
  vpc_id     = aws_vpc.EKSvpc.id
  cidr_block = "10.0.64.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name = "private_subnet-1a"
    "kubernetes.io/role/internal-elb" = "1"
    "kubernetes.io/cluster/demo"      = "owned"
  }
}

resource "aws_subnet" "private-1b" {
  vpc_id     = aws_vpc.EKSvpc.id
  cidr_block = "10.0.96.0/24"
  availability_zone = "us-east-1b"

  tags = {
    Name = "private_subnet-1b"
    "kubernetes.io/role/internal-elb" = "1"
    "kubernetes.io/cluster/demo"      = "owned"
  }
}