# terraform-vpc-wordpress-mysql

$terraform init
$terraform fmt
$terraform validate
$terraform plan
$terraform apply --auto-approve
$terraform destroy --auto-approve

Its help you to create VPC, SUBNET(PUB;IC & PRIVATE), IGW, NATGW, Associate Public subnet
to IGW , Associate Private Subnet to Natgw, RT CREATION AND ASSOCIATION with subnet, Creation of
SGs, creation of Bastion host, mysql ec2 instance and instance with WORDPRESS.

Only in variable.tf you set your Count as need for how many subnet in public or private needed
and other resources auto created.
