resource "aws_instance" "techbeat-1" {
  ami = "ami-00e8b55a2e841be44"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.publicsubnet.id
  vpc_security_group_ids = ["${aws_security_group.techbeat.id}"]
  key_name = "LinuxKeyPair"
  user_data = file ("${path.module}/Data/data.sh")

  tags = {
    Name = "Tech-Beats-Server"
  }

}