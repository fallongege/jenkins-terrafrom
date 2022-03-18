variable "environment" {
}
variable "region" {
  default = "us-east-1"
}
variable "cidr_blocks" {
  type = list(object({
    cidr_block = string
  }))
}
variable "ami_id" {
}
variable "instance_type" {

}
variable "keypair" {

}
