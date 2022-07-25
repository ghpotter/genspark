 resource "aws_security_group" "terraform_access" {
  name = "allows access"
  description = "Allows SSH and HTTP connections to terraform VPC"
  vpc_id = "assignment-vpc"

# Allow ssh access
  ingress  {
    description      = "Inbound rule"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

# Allow http access
  ingress {
    description      = "Inbound rule"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

# Allow full access to computers within secruity group
  ingress {
    description = "Inbound rule"
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    self             = true
  }
  
# Allow full outbound access
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "terraform_access"
  }
}