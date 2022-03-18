resource "aws_instance" "dev-ec2" {
  ami                         = var.ami_id
  instance_type               = var.instance_type
  key_name                    = var.keypair
  subnet_id                   = aws_subnet.public-subnet.id
  vpc_security_group_ids      = [aws_security_group.ec2-sg.id]
  associate_public_ip_address = true
  tags = {
    Name = "${var.environment}-server"
  }
}