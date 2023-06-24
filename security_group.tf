provider "aws" {
  region = "us-west-2"
}

resource "aws_security_group" "allow_tls" {
  name        = "TEST-AMIT"
  description = "Amit learning terraform"
  vpc_id      = "vpc-xyz"

  ingress {
    description      = "SSL Traffic"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["1.2.3.4/32"]
  }

  ingress {
    description      = "HTTP Traffic"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["4.5.6.7/32"]
  }

  ingress {
    description      = "HTTP Traffic"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = ["8.2.3.4/32"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = "TEST-AMIT"
  }
}