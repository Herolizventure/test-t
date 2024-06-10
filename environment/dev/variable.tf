variable "aws_region" {
  type    = string
  default = "us-east-1"
}

//////VPC/////
variable "project_name" {
  type    = string
  default = "demo"
}
variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}

variable "public_subnet_az1_cidr" {
  type    = string
  default = "10.0.1.0/24"
}

variable "public_subnet_az2_cidr" {
  type    = string
  default = "10.0.2.0/24"
}

variable "private_subnet_az1_cidr" {
  type    = string
  default = "10.0.3.0/24"
}

variable "private_subnet_az2_cidr" {
  type    = string
  default = "10.0.4.0/24"
}


variable "instance_types" {
  type    = list(string)
  default = [".medium"]
}

variable "availability_zone_public_subnet_1" {}
variable "availability_zone_public_subnet_2" {}
variable "availability_zone_private_subnet_1" {}
variable "availability_zone_private_subnet_2" {}

#ec2

variable "region" {}
variable "associate_public_ip_address" {}
variable "key_name" {}
variable "instance_type" {}


#sg
variable "https" {}
variable "tcp_protocol" {}
variable "internet_open_ip" {}
variable "wildcard_port" {}
variable "minus_one_protocol_code" {}