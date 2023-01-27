output "vpc-id" {
  value = aws_vpc.custom.id
}

output "aws-keypair-name" {
  value = aws_key_pair.Key-Pair.key_name
}


output "public-subnet1" {
    value = aws_subnet.public_subnet[0].id
}

output "public-subnet2" {
    value = aws_subnet.public_subnet[1].id
}




output "private-subnet1" {
    value = aws_subnet.private_subnet[0].id
}

output "private-subnet2" {
    value = aws_subnet.private_subnet[1].id
}



output "igw-id" {
    value = aws_internet_gateway.Internet_Gateway.id
}

output "igw-RT-id" {
    value = aws_route_table.Public-Subnet-RT.id
}




output "NATGW-EACH-PUB-SUBNET0-public-ip" {
    value = aws_nat_gateway.NAT_GATEWAY[0].public_ip
}

output "NATGW-EACH-PUB-SUBNET1-public-ip" {
    value = aws_nat_gateway.NAT_GATEWAY[1].public_ip
}



