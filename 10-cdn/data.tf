data "aws_ssm_parameter" "web_alb_dns_name" {
    name = "/${var.project_name}/${var.environment}/web_alb_dns_name"
  
}

data "aws_ssm_parameter" "aws_acm_certificate_arn" {
    name = "/${var.project_name}/${var.environment}/aws_acm_certificate_arn"
  
}