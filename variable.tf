variable "ami" {
  type = map

  default = {
    "us-east-1" = "ami-0b5eea76982371e91"
    "us-west-1" = "ami-006fce2a9625b177f"
  }
}

variable "instance_count" {
  default = "1"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "aws_region" {
  default = "us-east-1"
}

variable "public_subnet" {
  default = 2
}


variable "private_subnet" {
  default = 2
}
