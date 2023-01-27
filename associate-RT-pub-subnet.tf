#Associate the routing table to the Public Subnet!

# Creating a resource for the Route Table Association!
resource "aws_route_table_association" "RT-IG-Association" {

  depends_on = [
    aws_vpc.custom,
    aws_subnet.public_subnet,
    aws_subnet.private_subnet,
    aws_route_table.Public-Subnet-RT
  ]

# Public Subnet ID
  subnet_id      = aws_subnet.public_subnet[count.index].id
  count = var.public_subnet

#  Route Table ID
  route_table_id = aws_route_table.Public-Subnet-RT.id
}