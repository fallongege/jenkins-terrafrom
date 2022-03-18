resource "aws_security_group" "ec2-sg" {
  name        = "${var.environment}-ec2-sg"
  description = "Sg of dev ec2"
  vpc_id      = aws_vpc.dev-vpc.id

  ingress {
    description = "SSH for ec2 from everywhere"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "HTTP for ec2 from everywhere"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
