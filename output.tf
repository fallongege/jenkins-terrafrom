output "vpcid" {
  value = aws_vpc.dev-vpc.id
}
output "publicsubnet_id" {
  value = aws_subnet.public-subnet.id
}
output "privatesubnet_id" {
  value = aws_subnet.private-subnet.id
}
output "ec2-public-ip" {
  value = aws_instance.dev-ec2.public_ip
}