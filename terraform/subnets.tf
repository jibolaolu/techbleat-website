resource "aws_subnet" "publicsubnet" {
  cidr_block = var.public_subnets
  vpc_id = aws_vpc.techbeat.id
  availability_zone = var.availability_zone
  map_public_ip_on_launch = true

  tags = {
    Name = "Public-Subnet"
  }
}

