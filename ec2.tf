module "myec2_calling_module" {

  //source = "../terraform-modules/subnet/module"

  source = "git@github.com:bhargavidevopsproject/terraform-modules.git//ec2/module"

  

  instance_count = var.instance_count

  ami_id = data.aws_ami.ubuntu.id
}
