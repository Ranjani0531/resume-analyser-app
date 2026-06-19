resource "aws_route_table_association" "public_associate" {
  route_table_id = aws_route_table.Resume_public_route.id
  subnet_id = aws_subnet.Resume_public_subnet.id
}

resource "aws_route_table_association" "private_associate" {
  route_table_id = aws_route_table.Resume_private_route.id
  subnet_id = aws_subnet.Resume_private_subnet.id
}