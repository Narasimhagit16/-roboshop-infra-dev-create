# resource "aws_ssm_parameter" "app_alb_listener_arn" {
#   name  = "/${var.project_name}/${var.environment}/app_alb_listener_arn"
#   type  = "String"
#   value = aws_lb_listener.http.arn.value
# }


resource "aws_ssm_parameter" "aws_acm_certificate_arn" {
  name  = "/${var.project_name}/${var.environment}/aws_acm_certificate_arn"
  type  = "String"
  value = aws_acm_certificate.nariops.arn
}