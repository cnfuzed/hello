provider "aws" {
  region = "us-west-2"
  access_key  = "${var.aws_access_key}"
  secret_key  = "${var.aws_secret_key}"
}

resource "aws_instance" "example" {
  ami           = "ami-0c94855ba95c71c99"
  instance_type = "t2.micro"
  tags = {
    Name = "example-instance"
  }
}
