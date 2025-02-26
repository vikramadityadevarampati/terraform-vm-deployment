provider "aws" {
  region = var.aws_region
}

# Security Group for SSH access
resource "aws_security_group" "vm_sg" {
  name        = "vm-security-group"
  description = "Allow SSH access"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]  # Change this to your IP for security
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# Creating 20 VMs using a map and loop
resource "aws_instance" "vm" {
  for_each      = var.vm_configs
  ami           = each.value.ami
  instance_type = each.value.instance_type
  key_name      = var.key_name
  security_groups = [aws_security_group.vm_sg.name]

  tags = {
    Name = each.key
    OS   = each.value.os
  }
}
