provider "aws" {
  region = var.region
}

resource "aws_instance" "First_instance" {
  ami                         = var.ami_id
  instance_type               = var.inst_type
  count                       = var.no_of_instances
  associate_public_ip_address = false
  tags = {
    Name = "Instance ${count.index}"
  }
}


