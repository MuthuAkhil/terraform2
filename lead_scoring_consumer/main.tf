# Get latest CentOS Linux 8.x AMI
data "aws_ami" "centos-linux" {
  most_recent = true

  owners = ["amazon"]

  filter {
    name   = "name"
    values = ["al2023-ami-*-x86_64"]
  }

  filter {
    name   = "owner-alias"
    values = ["amazon"]
  }
}

data "aws_vpc" "vpc" {
  id = var.vpc
}

data "aws_subnet" "subnet" {
  id = var.subnet
}

data "aws_security_group" "sg" {
  id = var.sg
}

resource "aws_instance" "lead_scoring_consumer" {
  ami                    = data.aws_ami.centos-linux.id
  instance_type          = var.instance_type
  subnet_id              = data.aws_subnet.subnet.id
  key_name               = var.key_name
  vpc_security_group_ids = [data.aws_security_group.sg.id]


  tags = {
    Name = "lead_scoring_consumer"
  }
}

