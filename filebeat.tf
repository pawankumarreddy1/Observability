resource "aws_security_group" "Fb1-sg" {
  name        = "fb-sg"
  description = "Allow inbound traffic"
  vpc_id      = "vpc-0b161059b1c227bbb"

  ingress {
    description = "admin"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["43.225.22.31/32"]
  }
  ingress {
    description     = "admin"
    from_port       = 22
    to_port         = 22
    protocol        = "tcp"
    cidr_blocks = ["43.225.22.31/32"]
  }

  ingress {
    description = "admin"
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["43.225.22.31/32"]
  }
  ingress {
    description = "admin"
    from_port   = 5044
    to_port     = 5044
    protocol    = "tcp"
    cidr_blocks = ["43.225.22.31/32"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "filebit-sg"
  }
}


resource "aws_instance" "filebeat" {
  ami                    = "ami-007855ac798b5175e"
  instance_type          = "t2.medium"
  subnet_id              = "subnet-0de4dfb0db526b681"
  vpc_security_group_ids = [aws_security_group.Fb1-sg.id]
  key_name               = "monitor"
  user_data              = file("filebeat.sh")

  tags = {
    Name = "filebeat"
  }
}