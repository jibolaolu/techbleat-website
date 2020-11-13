resource "aws_route_table" "publicroutetable" {
  vpc_id = aws_vpc.techbeat.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.techbeatIG.id
  }
  tags = {
    Name = "Public Route Table"
  }
}

resource "aws_route_table_association" "publicroutetableassociation" {
  subnet_id      = aws_subnet.publicsubnet.id
  route_table_id = aws_route_table.publicroutetable.id
}