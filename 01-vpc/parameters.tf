resource "aws_ssm_parameter" "vpcid" {
  name  = "/${var.project_name}/${var.environment}/vpcid"
  type  = "String"
  value = module.roboshop.vpc_id
}

resource "aws_ssm_parameter" "public_subnet_ids" {
  name  = "/${var.project_name}/${var.environment}/public_subnet_ids"
  type  = "StringList"
  value = join(",", module.roboshop.public_subnets)
}

resource "aws_ssm_parameter" "private_subnet_ids" {
  name  = "/${var.project_name}/${var.environment}/private_subnet_ids"
  type  = "StringList"
  value = join(",", module.roboshop.private_subnets)
}


resource "aws_ssm_parameter" "database_subnet_ids" {
  name  = "/${var.project_name}/${var.environment}/database_subnet_ids"
  type  = "StringList"
  value = join(",", module.roboshop.database_subnets)
}