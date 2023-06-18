provider "aws" {
  region = "us-west-2"
}

resource "aws_instance" "test-amit" {
  instance_type = "t2.micro"
  ami = "ami-07dfed28fcf95241c"
  tags = {
    Name = "test-amit"
  }
}