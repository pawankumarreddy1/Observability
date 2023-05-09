# resource "aws_security_group" "app-sg" {
#   name        = "app-sg-sg"
#   description = "this is using for securitygroup"
#   vpc_id      = "vpc-0ff4820ec680e4df0"

#   ingress {
#     description = "this is inbound rule"
#     from_port   = 22
#     to_port     = 22
#     protocol    = "tcp"
#     cidr_blocks = ["43.225.22.31/32"]
#   }
#   ingress {
#     from_port   = 9100
#     to_port     = 9100
#     protocol    = "tcp"
#     cidr_blocks = ["43.225.22.31/32"]
#   }
#   ingress {
#     from_port   = 80
#     to_port     = 80
#     protocol    = "tcp"
#     cidr_blocks = ["0.0.0.0/0"]
#   }

#   egress {
#     from_port        = 0
#     to_port          = 0
#     protocol         = "-1"
#     cidr_blocks      = ["0.0.0.0/0"]
#     ipv6_cidr_blocks = ["::/0"]
#   }

#   tags = {
#     Name = "app-sg-sg"
#   }
# }

# resource "aws_instance" "application" {
#   ami                    = "ami-04e914639d0cca79a"
#   instance_type          = "t2.micro"
#   subnet_id              = "subnet-0c61a72dc6b3e0cdb"
#   vpc_security_group_ids = [aws_security_group.app-sg.id]
#   key_name               = "monitor"
#   user_data              = file("node-exporter.sh")

#   tags = {
#     Name = "application"
#   }
# }