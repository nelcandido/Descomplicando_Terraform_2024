data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

resource "aws_instance" "web" {
  //count         = var.environment == "production" ? 2 : 1
  count         = var.criar_instancia ? 1 : 0
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t3.micro"

  tags = {
    Name     = var.nome
    Env      = var.environment
    Platform = data.aws_ami.ubuntu.platform_details
  }
}