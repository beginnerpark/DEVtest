provider "aws" {
  region     = "ap-northeast-2"
}

resource "aws_instance" "web" {
  ami           = "ami-0c9c942bd7bf113a2"  # Amazon Linux 2 AMI (서울 리전)
  instance_type = "t2.micro"

  tags = {
    Name = "TerraformEC2"
  }
}
