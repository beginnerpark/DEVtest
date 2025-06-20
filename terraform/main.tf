provider "aws" {
  region = "ap-northeast-2"
}

resource "aws_instance" "web" {
  ami                         = "ami-0c9c942bd7bf113a2"
  instance_type               = "t2.micro"
  subnet_id                   = "subnet-0c337f838ab531e90"
  vpc_security_group_ids      = ["sg-083c47e5d04e47714"]
  associate_public_ip_address = false

  tags = {
    Name = "existing-vpc-instance"
  }
}
