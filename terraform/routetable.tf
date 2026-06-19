resource "aws_route_table" "Resume_public_route" {
  vpc_id = aws_vpc.Resume-infra.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.Resume-gateway.id
  
  }
}
resource "aws_route_table" "Resume_private_route" {
  vpc_id = aws_vpc.Resume-infra.id

  
}