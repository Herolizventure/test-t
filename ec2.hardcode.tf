resource "aws_instance" "my-ec2" {
    ami = ""
    key_name = "ed-office"
    instance_type = "m5.large"
    availability_zone = "us-east-1a"
    subnet_id = "subnet-0abcdef1234567890"
  
}

resource "aws_security_group" "my_security_group" {
  name        = "ec2-hardcoded-SG"
  description = "Allow SSH and HTTP"
  vpc_id      = "vpc-0abcdef1234567890"  # Replace with your VPC ID

  # Ingress rules
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Egress rules
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "ec2-hardcoded-SG"
  }
}