module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  name = "${local.ec2_name}-vpn"
  ami = data.aws_ami.ami-id.id
  instance_type          = "t2.micro"
  vpc_security_group_ids = [data.aws_ssm_parameter.vpn_sg_id.value]
  #subnet_id = local.vpn_subnet_id
  subnet_id = data.aws_subnet.public_subnet_id.id
  user_data = file("openvpn.sh")
  tags = merge(var.common_tags,
    {
        component="mongodb"
    },
    {
        Name="${local.ec2_name}-vpn"
    }
  )
}
