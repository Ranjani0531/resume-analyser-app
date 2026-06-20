resource "aws_instance" "webserver" {
  
  ami = "ami-02777684819ca2214"
  instance_type = "t3.micro"
  key_name = "resume-analyser"
  subnet_id = aws_subnet.Resume_public_subnet.id
  associate_public_ip_address = "true"
  vpc_security_group_ids = [aws_security_group.nsg1.id]
}

output "webserver_public_ip" {
  value = aws_instance.webserver.public_ip
}
