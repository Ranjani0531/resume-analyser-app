resource "aws_subnet" "Resume_public_subnet" {
  vpc_id = aws_vpc.Resume-infra.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "pubic_subent"
  }
}
resource "aws_subnet" "Resume_private_subnet" {
  vpc_id = aws_vpc.Resume-infra.id
  cidr_block = "10.0.2.0/24"

  tags = {
    Name = "private_subnet"
  }
}