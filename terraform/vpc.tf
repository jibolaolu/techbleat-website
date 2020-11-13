resource "aws_vpc" "techbeat" {
  cidr_block = "10.0.0.0/16"
  enable_dns_hostnames = true
  instance_tenancy = "default"
  tags = {
    Name = "${var.service-name}-VPC"
  }
}

resource "aws_internet_gateway" "techbeatIG" {
  vpc_id = aws_vpc.techbeat.id

  tags = {
    Name = "${var.service-name}-IGW"
  }
}

resource "aws_eip" "EIP" {
  vpc              = true
  tags = {
    Name = "${var.service-name}-EIP"
  }

}

resource "aws_nat_gateway" "NATGW" {
  allocation_id = aws_eip.EIP.id
  subnet_id = aws_subnet.publicsubnet.id

  tags = {
    Name  = "${var.service-name}-NTGW"
  }

}


