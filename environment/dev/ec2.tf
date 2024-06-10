
#module "dptinstance" {
#  source                      = "../../module/ec2"
#  region                      = var.region
#  associate_public_ip_address = var.associate_public_ip_address
#  key_name                    = var.key_name
#  instance_type               = var.instance_type
#}


resource "aws_security_group" "https_sg" {
  description = "security group to allow traffic on port 443"
  

 ingress {
    description = "open 443 to internet"
    from_port   = var.https
    to_port     = var.https
    protocol    = var.tcp_protocol
    cidr_blocks = var.internet_open_ip
  }

  egress {
    description = "outbound traffic"
    from_port   = var.wildcard_port
    to_port     = var.wildcard_port
    protocol    = var.minus_one_protocol_code
    cidr_blocks = var.internet_open_ip
  }
 

}