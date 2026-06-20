resource "aws_instance" "webserver" {
  
  ami = "ami-02777684819ca2214"
  instance_type = "t3.micro"
  key_name = "resume-analyser"
  subnet_id = aws_subnet.Resume_public_subnet.id
  associate_public_ip_address = "true"
  vpc_security_group_ids = [aws_security_group.nsg1.id]
}


resource "aws_instance" "Dbsever" {
  
  ami = "ami-02777684819ca2214"
  instance_type = "t3.micro"
  key_name = "resume-analyser"
  subnet_id = aws_subnet.Resume_private_subnet.id
  vpc_security_group_ids = [aws_security_group.nsg2.id]
}

output "webserver_public_ip" {
  value = aws_instance.webserver.public_ip
}

output "Dbserver_private_ip" {
  value = aws_instance.Dbsever.private_ip
}
output "Dbserver_public_ip" {
  value = aws_instance.Dbsever.public_ip
}

output "webserver_private_ip" {
  value = aws_instance.webserver.private_ip
}