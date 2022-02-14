vpc_cidr_block = "10.168.0.0/25"

instance_count = 3

ami_id = data.aws_ami.centos.id

public_subnets = ["10.10.0.0/28", "10.10.0.16/28", "10.10.0.32/28"]

private_subnets = ["10.10.0.64/28", "10.10.0.80/28", "10.10.0.96/28"]
