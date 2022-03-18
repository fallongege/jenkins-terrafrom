environment = "dev"

region = "us-east-1"

cidr_blocks = [{cidr_block = "192.168.0.0/16"},{cidr_block = "192.168.0.0/24"}, {cidr_block = "192.168.10.0/24"}]

ami_id = "ami-0c02fb55956c7d316"

instance_type = "t2.micro"

keypair = "shared-prd-nonprd-nova"