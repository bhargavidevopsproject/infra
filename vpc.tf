module "myvpc_calling_module" {
  //LOCAL REPO
  //source = "../terraform-modules/vpc/module"
  
  source = "git@github.com:bhargavidevopsproject/terraform-modules.git//subnet/module"

  //GIT REPO
  //source ="git@github.com:"
  vpc_cidr_block = var.vpc_cidr_block

  project = "INFRA_TRAINING"
}
