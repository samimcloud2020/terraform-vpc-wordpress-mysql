#Create a Public Subnet with auto public IP Assignment enabled in custom VPC!

# Creating Public subnet!
resource "aws_subnet" "private_subnet" {
  depends_on = [
    aws_vpc.custom,
    aws_subnet.public_subnet
  ]
  
  # VPC in which subnet has to be created!
  vpc_id = aws_vpc.custom.id
  
  # IP Range of this subnet
  cidr_block = "192.168.${count.index + 3}.0/24"
  count = var.private_subnet
  
  # Data Center of this subnet.
  availability_zone = data.aws_availability_zones.available.names[count.index]
  
  
  tags = {
    Name = "Private-Subnet-${count.index}"
  }
}