resource "aws_instance" "webserver" {
  
  ami = "ami-02777684819ca2214"
  instance_type = "t3.micro"
  key_name = "resume-analyser"
  subnet_id = aws_subnet.Resume_public_subnet.id
  associate_public_ip_address = "true"
  vpc_security_group_ids = [aws_security_group.nsg1.id]
}
resource "aws_eip" "web_ip" {
  domain = "vpc"
}

resource "aws_eip_association" "web_ip_associate" {
  instance_id = aws_instance.webserver.id
  allocation_id = aws_eip.web_ip.id
}



output "webserver_public_ip" {
  value = aws_instance.webserver.public_ip
}
