resource "aws_internet_gateway" "Resume-gateway" {
  vpc_id = aws_vpc.Resume-infra.id

  tags = {
    Name = "Resume-gateway-id"
  }
}