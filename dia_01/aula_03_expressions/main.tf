data "aws_ami" "ubuntu" {
  most_recent = true # Expression do tipo "bool"

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]  # Expressions do tipo "list"
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"] # Expressions do tipo "list"
  }

  owners = ["099720109477"] # Canonical
}

resource "aws_instance" "web" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t3.micro" # Expressions do tipo "string"

# Expressions do tipo "map"
  tags = {
    Name = "HelloWorld"
  }
}