# Creating a NAT Gateway on each public subnet
resource "aws_nat_gateway" "NAT_GATEWAY" {
  depends_on = [
    aws_eip.Nat-Gateway-EIP
  ]

  # Allocating the Elastic IP to the NAT Gateway!
  allocation_id = aws_eip.Nat-Gateway-EIP[count.index].id
  count = var.public_subnet
  # Associating it in the Public Subnet!
  subnet_id = aws_subnet.public_subnet[count.index].id
  tags = {
    Name = "Nat-Gateway-${count.index}"
  }
}