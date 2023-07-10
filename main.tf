resource "aws_instance" "webserver1" {
  ami                         = data.aws_ami.amazon-2.id
  instance_type               = "t2.micro"
  key_name                    = var.key_name
  subnet_id                   = var.subnet_id
  vpc_security_group_ids      = [aws_security_group.permitir_ssh.id]
  associate_public_ip_address = true

  tags = {
    Name = "webserver1"
  }
}


resource "aws_instance" "webserver2" {
  ami                         = data.aws_ami.amazon-2.id
  instance_type               = "t2.micro"
  key_name                    = var.key_name
  subnet_id                   = var.subnet_id
  vpc_security_group_ids      = [aws_security_group.permitir_ssh.id]
  associate_public_ip_address = true

  tags = {
    Name = "webserver2"
  }
}