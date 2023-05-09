resource "aws_instance" "es-kibana" {
  ami                    = "ami-007855ac798b5175e"
  instance_type          = "t2.medium"
  subnet_id              = "subnet-0de4dfb0db526b681"
  vpc_security_group_ids = [aws_security_group.ek1-sg.id]
  key_name               = "monitor"
  user_data              = file("elk-kibana.sh")

  tags = {
    Name = "es-kibana"
  }
}