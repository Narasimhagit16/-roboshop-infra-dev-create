module "roboshop" {
  #source = "../terraform-aws-vpc"
  #source = "git::https://github.com/Narasimhagit16/terraform-aws-vpc.git?ref=main"
  source = "git::https://github.com/Narasimhagit16/terraform-aws-vpc1.git?ref=main"




  #source= "git::https://github.com/Narasimhagit16/terraform1/tree/main/terraform-aws-vpc"

  project_name         = var.project_name
  environment          = var.environment
  common_tags          = var.common_tags
  vpc_tags             = var.vpc_tags
  public_subnet_cidr   = var.public_subnet_cidr
  private_subnet_cidr  = var.private_subnet_cidr
  database_subnet_cidr = var.database_subnet_cidr
  is_peering_required  = var.is_peering_required
}

