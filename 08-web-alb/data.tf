###############################################################################
# APP_ALB SG ids
###############################################################################

data "aws_ssm_parameter" "web_alb_sg_id" {
    name = "/${var.project_name}/${var.environment}/web_alb_sg_id"
  
}


###############################################################################
# private Subnet ids
###############################################################################


data "aws_ssm_parameter" "public_subnet_ids" {
    name = "/${var.project_name}/${var.environment}/public_subnet_ids"
  
}

data "aws_vpc" "default" {
  default = true
}

data "aws_subnet" "public_subnet_id" {
    vpc_id = data.aws_vpc.default.id
    availability_zone = "us-east-1a"

}


data "aws_ssm_parameter" "vpn_sg_id" {
    name = "/${var.project_name}/${var.environment}/vpn_sg_id"
  
}

data "aws_ssm_parameter" "aws_acm_certificate_arn" {
    name = "/${var.project_name}/${var.environment}/aws_acm_certificate_arn"
  
}