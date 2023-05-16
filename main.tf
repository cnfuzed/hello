resource "aws_instance" "example" {
  ami           = "ami-0c94855ba95c71c99"  # Amazon Linux 2 AMI ID
  instance_type = "t2.micro"

  tags = {
    Name = "MyEC2Instance"
  }
}

