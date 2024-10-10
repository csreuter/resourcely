
resource "aws_instance" "my-ec2_Q2yrSfbsTTr9DWQ3" {
  ami                    = data.aws_ami.my-ec2_Q2yrSfbsTTr9DWQ3.id
  instance_type          = "a1.2xlarge"
  key_name               = "my-ec2_Q2yrSfbsTTr9DWQ3"
  vpc_security_group_ids = [aws_security_group.my-ec2_Q2yrSfbsTTr9DWQ3_0.id]

  ebs_block_device {
    device_name = "ebs-block"
    volume_type = "gp3"
    volume_size = 10
  }

  metadata_options {
    http_endpoint = "enabled"
    http_tokens   = "required"
  }
}

resource "aws_key_pair" "my-ec2_Q2yrSfbsTTr9DWQ3" {
  key_name   = "my-ec2_Q2yrSfbsTTr9DWQ3"
  public_key = "adfdadkjlfad"
}

resource "aws_security_group" "my-ec2_Q2yrSfbsTTr9DWQ3_0" {
  name        = "Allow Ingress"
  description = "Allow ingress from specific CIDR"

  ingress {
    description = "inbound SSH"
    from_port   = 22
    to_port     = 23
    protocol    = "tcp"
    cidr_blocks = ["1.2.3.4/32"]
  }
}

data "aws_ami" "my-ec2_Q2yrSfbsTTr9DWQ3" {
  most_recent = true
  owners      = ["099720109477"]

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}
