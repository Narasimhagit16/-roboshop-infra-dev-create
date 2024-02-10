data "aws_route53_zone" "nariops" {
  name         = "nariops.online."

}

data "aws_ssm_parameter" "app_alb_listener_arn" {
    name = "/${var.project_name}/${var.environment}/app_alb_listener_arn"
  
}