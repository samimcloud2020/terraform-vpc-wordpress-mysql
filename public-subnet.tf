#Create a Public Subnet with auto public IP Assignment enabled in custom VPC!

# Creating Public subnet!
resource "aws_subnet" "public_subnet" {
  depends_on = [
    aws_vpc.custom
  ]
  
  # VPC in which subnet has to be created!
  vpc_id = aws_vpc.custom.id
  
  # IP Range of this subnet
  cidr_block = "192.168.${count.index}.0/24"
  count = var.public_subnet
  
  # Data Center of this subnet.
  availability_zone = data.aws_availability_zones.available.names[count.index]
  
  # Enabling automatic public IP assignment on instance launch!
  map_public_ip_on_launch = true

  tags = {
    Name = "Public-Subnet-${count.index}"
  }
}