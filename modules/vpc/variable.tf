
variable "project_name" {
    type = string
    default = "xtivia"
}
variable "vpc_cidr" {
}

#subnet cidr
variable "public_subnet_az1_cidr" {}
variable "public_subnet_az2_cidr" {}
variable "private_subnet_az1_cidr" {}
variable "private_subnet_az2_cidr" {}

#availability zone
variable "availability_zone_public_subnet_1" {}
variable "availability_zone_public_subnet_2" {}
variable "availability_zone_private_subnet_1" {}
variable "availability_zone_private_subnet_2" {}