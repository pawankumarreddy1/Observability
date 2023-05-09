# resource "aws_security_group" "dev-prometheus" {
#   name        = "dev-prometheus-sg"
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
#     from_port   = 9090
#     to_port     = 9090
#     protocol    = "tcp"
#     cidr_blocks = ["43.225.22.31/32"]
#   }

#   egress {
#     from_port        = 0
#     to_port          = 0
#     protocol         = "-1"
#     cidr_blocks      = ["0.0.0.0/0"]
#     ipv6_cidr_blocks = ["::/0"]
#   }

#   tags = {
#     Name = "dev-prometheus-sg"
#   }
# }





# resource "aws_instance" "prometheus" {
#   ami                    = "ami-04e914639d0cca79a"
#   instance_type          = "t2.micro"
#   subnet_id              = "subnet-0c61a72dc6b3e0cdb"
#   vpc_security_group_ids = [aws_security_group.dev-prometheus.id]
#   key_name               = "monitor"
#   user_data              = file("prometheus.sh")

#   tags = {
#     Name = "prometheus"
#   }
# }