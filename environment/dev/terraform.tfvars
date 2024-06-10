aws_region   = "us-east-1"
project_name = "xtivia-dev"
vpc_cidr     = "198.172.0.0/16"

# cidr_blocks
public_subnet_az1_cidr  = "198.172.10.0/24"
public_subnet_az2_cidr  = "198.172.20.0/24"
private_subnet_az1_cidr = "198.172.30.0/24"
private_subnet_az2_cidr = "198.172.40.0/24"
instance_types          = ["t5.large"]

# availability zones
availability_zone_public_subnet_1  = "us-east-1a"
availability_zone_public_subnet_2  = "us-east-1b"
availability_zone_private_subnet_1 = "us-east-1c"
availability_zone_private_subnet_2 = "us-east-1e"

# ec2
region                      = "us-east-1"
associate_public_ip_address = "true"
key_name                    = "jenkins"   
instance_type               = "t2.micro"

#security group
https        = 443
tcp_protocol     = "tcp"
internet_open_ip = ["0.0.0.0/0"]

wildcard_port           = 0
minus_one_protocol_code = "-1"