vpc_cidr_block="10.10.0.0/25"

region="eu-west-2"

instance_count=3

instance_type="t2.micro"

#ami_id=data.aws_ami.ubuntu.id
public_subnets=["10.10.0.0/28","10.10.0.16/28","10.10.0.32/28"]

private_subnets=["10.10.0.64/28","10.10.0.80/28","10.10.0.96/28"]