provider "aws" {
  region = "us-west-2"
}

resource "aws_instance" "MyEC2Instance" {
  ami           = "ami-0c94855ba95c71c99"  // Amazon Linux 2 AMI ID
  instance_type = "t2.micro"

  tags = {
    Name = "MyEC2Instance"
  }
}
