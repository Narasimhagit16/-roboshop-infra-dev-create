locals {
    ec2_name = "${var.project_name}-${var.environment}"
    #vpn_subnet_id = element(split(",", data.aws_ssm_parameter.vpn_subnet_ids.value),0)
    #vpn_subnet_id = element(split(",", data.aws_subnet.public_subnet_id.value),0)
  
}