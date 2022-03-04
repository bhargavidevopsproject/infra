module "myec2_calling_module" {

  //source = "../terraform-modules/subnet/module"

  source = "git@github.com:bhargavidevopsproject/terraform-modules.git//ec2/module?ref=main"

  

  instance_count = var.instance_count

  ami_id = data.aws_ami.ubuntu.id
  instance_type=var.instance_type
  project="MY_Terraform_Project"

key_name=module.my_keypair_calling_module.key_name

  public_subnet_id=module.my_public_subnet_calling_module.my_public_subnet_id

  vpc_security_group_ids=module.my_sg_calling_module.security_group_id
}

