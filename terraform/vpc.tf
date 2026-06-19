resource "aws_vpc" "Resume-infra" {
  cidr_block = "10.0.0.0/16"

  tags = {
    name = "Resume-Infra"
  }

}