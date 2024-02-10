module "mongodb" {
  #source       = "../../terraform-aws-sg"
  source       = "git::https://github.com/Narasimhagit16/-terraform-aws-sg.git?ref=main"
  description  = "Security Group for MongoDB"
  vpc_id       = data.aws_ssm_parameter.vpc_id.value
  project_name = var.project_name
  environment  = var.environment
  common_tags  = var.common_tags
  sg_tags      = var.sg_tags
  sg_name      = "mongodb"
  #sg_ingress-rules= var.mongodb_sg_ingress-rules

}

#security group for Application Load Balancer
module "app_alb" {
  #source       = "../../terraform-aws-sg"
  source       = "git::https://github.com/Narasimhagit16/-terraform-aws-sg.git?ref=main"
  description  = "Security Group for app-alb"
  vpc_id       = data.aws_ssm_parameter.vpc_id.value
  project_name = var.project_name
  environment  = var.environment
  common_tags  = var.common_tags
  sg_tags      = var.sg_tags
  sg_name      = "app-alb"

}

#security group for Application Load Balancer
module "web_alb" {
  #source       = "../../terraform-aws-sg"
  source       = "git::https://github.com/Narasimhagit16/-terraform-aws-sg.git?ref=main"
  description  = "Security Group for web-alb"
  vpc_id       = data.aws_ssm_parameter.vpc_id.value
  project_name = var.project_name
  environment  = var.environment
  common_tags  = var.common_tags
  sg_tags      = var.sg_tags
  sg_name      = "web-alb"

}


#security group for VPN, it is created in default VPC

module "vpn" {
  #source      = "../../terraform-aws-sg"
  source       = "git::https://github.com/Narasimhagit16/-terraform-aws-sg.git?ref=main"
  description = "Security Group for vpn"
  #vpc_id = data.aws_ssm_parameter.vpc_id.value
  vpc_id       = data.aws_vpc.default.id
  project_name = var.project_name
  environment  = var.environment
  common_tags  = var.common_tags
  sg_tags      = var.sg_tags
  sg_name      = "vpn"
  #sg_ingress-rules= var.mongodb_sg_ingress-rules

}

module "mysql" {
  #source       = "../../terraform-aws-sg"
  source       = "git::https://github.com/Narasimhagit16/-terraform-aws-sg.git?ref=main"
  description  = "Security Group for mysql"
  vpc_id       = data.aws_ssm_parameter.vpc_id.value
  project_name = var.project_name
  environment  = var.environment
  common_tags  = var.common_tags
  sg_tags      = var.sg_tags
  sg_name      = "mysql"
  #sg_ingress-rules= var.mongodb_sg_ingress-rules

}

module "redis" {
  #source       = "../../terraform-aws-sg"
  source       = "git::https://github.com/Narasimhagit16/-terraform-aws-sg.git?ref=main"
  description  = "Security Group for redis"
  vpc_id       = data.aws_ssm_parameter.vpc_id.value
  project_name = var.project_name
  environment  = var.environment
  common_tags  = var.common_tags
  sg_tags      = var.sg_tags
  sg_name      = "redis"
  #sg_ingress-rules= var.mongodb_sg_ingress-rules

}

module "rabbitmq" {
  #source       = "../../terraform-aws-sg"
  source       = "git::https://github.com/Narasimhagit16/-terraform-aws-sg.git?ref=main"
  description  = "Security Group for rabbitmq"
  vpc_id       = data.aws_ssm_parameter.vpc_id.value
  project_name = var.project_name
  environment  = var.environment
  common_tags  = var.common_tags
  sg_tags      = var.sg_tags
  sg_name      = "rabbitmq"
  #sg_ingress-rules= var.mongodb_sg_ingress-rules

}


module "catalogue" {
  #source       = "../../terraform-aws-sg"
  source       = "git::https://github.com/Narasimhagit16/-terraform-aws-sg.git?ref=main"
  description  = "Security Group for catalogue"
  vpc_id       = data.aws_ssm_parameter.vpc_id.value
  project_name = var.project_name
  environment  = var.environment
  common_tags  = var.common_tags
  sg_tags      = var.sg_tags
  sg_name      = "catalogue"
  #sg_ingress-rules= var.mongodb_sg_ingress-rules

}

module "user" {
  #source       = "../../terraform-aws-sg"
  source       = "git::https://github.com/Narasimhagit16/-terraform-aws-sg.git?ref=main"
  description  = "Security Group for user"
  vpc_id       = data.aws_ssm_parameter.vpc_id.value
  project_name = var.project_name
  environment  = var.environment
  common_tags  = var.common_tags
  sg_tags      = var.sg_tags
  sg_name      = "user"
  #sg_ingress-rules= var.mongodb_sg_ingress-rules

}

module "cart" {
  #source       = "../../terraform-aws-sg"
  source       = "git::https://github.com/Narasimhagit16/-terraform-aws-sg.git?ref=main"
  description  = "Security Group for cart"
  vpc_id       = data.aws_ssm_parameter.vpc_id.value
  project_name = var.project_name
  environment  = var.environment
  common_tags  = var.common_tags
  sg_tags      = var.sg_tags
  sg_name      = "cart"
  #sg_ingress-rules= var.mongodb_sg_ingress-rules

}

module "shipping" {
  #source       = "../../terraform-aws-sg"
  source       = "git::https://github.com/Narasimhagit16/-terraform-aws-sg.git?ref=main"
  description  = "Security Group for shipping"
  vpc_id       = data.aws_ssm_parameter.vpc_id.value
  project_name = var.project_name
  environment  = var.environment
  common_tags  = var.common_tags
  sg_tags      = var.sg_tags
  sg_name      = "shipping"
  #sg_ingress-rules= var.mongodb_sg_ingress-rules

}

module "payment" {
  #source       = "../../terraform-aws-sg"
  source       = "git::https://github.com/Narasimhagit16/-terraform-aws-sg.git?ref=main"
  description  = "Security Group for payment"
  vpc_id       = data.aws_ssm_parameter.vpc_id.value
  project_name = var.project_name
  environment  = var.environment
  common_tags  = var.common_tags
  sg_tags      = var.sg_tags
  sg_name      = "payment"
  #sg_ingress-rules= var.mongodb_sg_ingress-rules

}

module "web" {
  #source       = "../../terraform-aws-sg"
  source       = "git::https://github.com/Narasimhagit16/-terraform-aws-sg.git?ref=main"
  description  = "Security Group for web"
  vpc_id       = data.aws_ssm_parameter.vpc_id.value
  project_name = var.project_name
  environment  = var.environment
  common_tags  = var.common_tags
  sg_tags      = var.sg_tags
  sg_name      = "web"
  #sg_ingress-rules= var.mongodb_sg_ingress-rules

}

###############################################################################
# Below rules need to be reviwed, not given all rules
###############################################################################
resource "aws_security_group_rule" "mysql_shipping" {
  source_security_group_id = module.shipping.sg_id
  type                     = "ingress"
  from_port                = 3306
  to_port                  = 3306
  protocol                 = "tcp"
  security_group_id        = module.mysql.sg_id
}


resource "aws_security_group_rule" "mongodb_catalogue" {
  source_security_group_id = module.catalogue.sg_id
  type                     = "ingress"
  from_port                = 27017
  to_port                  = 27017
  protocol                 = "tcp"
  security_group_id        = module.mongodb.sg_id
}

resource "aws_security_group_rule" "cart_catalogue_8080" {
  source_security_group_id = module.catalogue.sg_id
  type                     = "ingress"
  from_port                = 8080
  to_port                  = 8080
  protocol                 = "tcp"
  security_group_id        = module.cart.sg_id
}

resource "aws_security_group_rule" "cart_catalogue" {
  source_security_group_id = module.catalogue.sg_id
  type                     = "ingress"
  from_port                = 80
  to_port                  = 80
  protocol                 = "tcp"
  security_group_id        = module.cart.sg_id
}



#home to VPN - internet connction : security group

resource "aws_security_group_rule" "vpn_home" {
  # source_security_group_id = module.vpn.sg_id
  type      = "ingress"
  from_port = 0
  to_port   = 0
  #protocol          = "tcp"
  protocol          = "all"
  security_group_id = module.vpn.sg_id
  cidr_blocks       = ["0.0.0.0/0"] # internet
}


resource "aws_security_group_rule" "mongodb_user" {
  source_security_group_id = module.user.sg_id
  type                     = "ingress"
  from_port                = 27017
  to_port                  = 27017
  protocol                 = "tcp"
  security_group_id        = module.mongodb.sg_id
}

resource "aws_security_group_rule" "redis_user" {
  source_security_group_id = module.user.sg_id
  type                     = "ingress"
  from_port                = 6379
  to_port                  = 6379
  protocol                 = "tcp"
  security_group_id        = module.redis.sg_id
}

resource "aws_security_group_rule" "redis_cart" {
  source_security_group_id = module.cart.sg_id
  type                     = "ingress"
  from_port                = 6379
  to_port                  = 6379
  protocol                 = "tcp"
  security_group_id        = module.redis.sg_id
}

#####################################################################################
# below rules are for acepting connections from security group of VPN
# All servers should allow connection from VPN, to install the respective application
#####################################################################################

resource "aws_security_group_rule" "web_vpn" {
  source_security_group_id = module.vpn.sg_id
  type                     = "ingress"
  from_port                = 22
  to_port                  = 22
  protocol                 = "tcp"
  security_group_id        = module.web.sg_id
}



resource "aws_security_group_rule" "mongodb_vpn" {
  source_security_group_id = module.vpn.sg_id
  type                     = "ingress"
  from_port                = 22
  to_port                  = 22
  protocol                 = "tcp"
  security_group_id        = module.mongodb.sg_id
}

resource "aws_security_group_rule" "redis_vpn" {
  source_security_group_id = module.vpn.sg_id
  type                     = "ingress"
  from_port                = 22
  to_port                  = 22
  protocol                 = "tcp"
  security_group_id        = module.redis.sg_id
}

resource "aws_security_group_rule" "mysql_vpn" {
  source_security_group_id = module.vpn.sg_id
  type                     = "ingress"
  from_port                = 22
  to_port                  = 22
  protocol                 = "tcp"
  security_group_id        = module.mysql.sg_id
}

resource "aws_security_group_rule" "rabbitmq_vpn" {
  source_security_group_id = module.vpn.sg_id
  type                     = "ingress"
  from_port                = 22
  to_port                  = 22
  protocol                 = "tcp"
  security_group_id        = module.rabbitmq.sg_id
}

resource "aws_security_group_rule" "rabbitmq_payment" {
  source_security_group_id = module.payment.sg_id
  type                     = "ingress"
  from_port                = 5672
  to_port                  = 5672
  protocol                 = "tcp"
  security_group_id        = module.rabbitmq.sg_id
}

resource "aws_security_group_rule" "catalogue_vpn" {
  source_security_group_id = module.vpn.sg_id
  type                     = "ingress"
  from_port                = 22
  to_port                  = 22
  protocol                 = "tcp"
  security_group_id        = module.catalogue.sg_id
}

resource "aws_security_group_rule" "user_vpn" {
  source_security_group_id = module.vpn.sg_id
  type                     = "ingress"
  from_port                = 22
  to_port                  = 22
  protocol                 = "tcp"
  security_group_id        = module.user.sg_id
}

resource "aws_security_group_rule" "cart_vpn" {
  source_security_group_id = module.vpn.sg_id
  type                     = "ingress"
  from_port                = 22
  to_port                  = 22
  protocol                 = "tcp"
  security_group_id        = module.cart.sg_id
}

resource "aws_security_group_rule" "shipping_vpn" {
  source_security_group_id = module.vpn.sg_id
  type                     = "ingress"
  from_port                = 22
  to_port                  = 22
  protocol                 = "tcp"
  security_group_id        = module.shipping.sg_id
}

resource "aws_security_group_rule" "payment_vpn" {
  source_security_group_id = module.vpn.sg_id
  type                     = "ingress"
  from_port                = 22
  to_port                  = 22
  protocol                 = "tcp"
  security_group_id        = module.payment.sg_id
}


#####################################################################################
# below rule is for acepting connections from security group of VPN to APP_ALB 
#####################################################################################

resource "aws_security_group_rule" "app_alb_vpn" {
  source_security_group_id = module.vpn.sg_id
  type                     = "ingress"
  from_port                = 80
  to_port                  = 80
  protocol                 = "tcp"
  security_group_id        = module.app_alb.sg_id
}

resource "aws_security_group_rule" "app_alb_cart" {
  source_security_group_id = module.cart.sg_id
  type                     = "ingress"
  from_port                = 80
  to_port                  = 80
  protocol                 = "tcp"
  security_group_id        = module.app_alb.sg_id
}

resource "aws_security_group_rule" "app_alb_user" {
  source_security_group_id = module.user.sg_id
  type                     = "ingress"
  from_port                = 80
  to_port                  = 80
  protocol                 = "tcp"
  security_group_id        = module.app_alb.sg_id
}

resource "aws_security_group_rule" "app_alb_catalogue" {
  source_security_group_id = module.catalogue.sg_id
  type                     = "ingress"
  from_port                = 80
  to_port                  = 80
  protocol                 = "tcp"
  security_group_id        = module.app_alb.sg_id
}

resource "aws_security_group_rule" "app_alb_payment" {
  source_security_group_id = module.payment.sg_id
  type                     = "ingress"
  from_port                = 80
  to_port                  = 80
  protocol                 = "tcp"
  security_group_id        = module.app_alb.sg_id
}

resource "aws_security_group_rule" "cart_payment" {
  source_security_group_id = module.payment.sg_id
  type                     = "ingress"
  from_port                = 8080
  to_port                  = 8080
  protocol                 = "tcp"
  security_group_id        = module.cart.sg_id
}


resource "aws_security_group_rule" "app_alb_shipping" {
  source_security_group_id = module.shipping.sg_id
  type                     = "ingress"
  from_port                = 80
  to_port                  = 80
  protocol                 = "tcp"
  security_group_id        = module.app_alb.sg_id
}


#####################################################################################
# below rule is for acepting connections from security group of web server to APP_ALB 
#####################################################################################

resource "aws_security_group_rule" "app_alb_web" {
  source_security_group_id = module.web.sg_id
  type                     = "ingress"
  from_port                = 80
  to_port                  = 80
  protocol                 = "tcp"
  security_group_id        = module.app_alb.sg_id
}

#####################################################################################
# below rule is for acepting connections from internet to security group of web ALB
#####################################################################################

resource "aws_security_group_rule" "web_alb_internet" {
  cidr_blocks = ["0.0.0.0/0"]
  type                     = "ingress"
  from_port                = 443
  to_port                  = 443
  protocol                 = "tcp"
  security_group_id        = module.web_alb.sg_id
}

resource "aws_security_group_rule" "web_web_alb" {
  source_security_group_id = module.web_alb.sg_id
  type                     = "ingress"
  from_port                = 80
  to_port                  = 80
  protocol                 = "tcp"
  security_group_id        = module.web.sg_id
}


#####################################################################################
# below rules are for acepting connections from security group of ALB 
#####################################################################################

resource "aws_security_group_rule" "catalogue_app_alb" {
  source_security_group_id = module.app_alb.sg_id
  type                     = "ingress"
  from_port                = 8080
  to_port                  = 8080
  protocol                 = "tcp"
  security_group_id        = module.catalogue.sg_id
}

resource "aws_security_group_rule" "user_app_alb" {
  source_security_group_id = module.app_alb.sg_id
  type                     = "ingress"
  from_port                = 8080
  to_port                  = 8080
  protocol                 = "tcp"
  security_group_id        = module.user.sg_id
}

resource "aws_security_group_rule" "cart_app_alb" {
  source_security_group_id = module.app_alb.sg_id
  type                     = "ingress"
  from_port                = 8080
  to_port                  = 8080
  protocol                 = "tcp"
  security_group_id        = module.cart.sg_id
}

resource "aws_security_group_rule" "shipping_app_alb" {
  source_security_group_id = module.app_alb.sg_id
  type                     = "ingress"
  from_port                = 8080
  to_port                  = 8080
  protocol                 = "tcp"
  security_group_id        = module.shipping.sg_id
}
resource "aws_security_group_rule" "payment_app_alb" {
  source_security_group_id = module.app_alb.sg_id
  type                     = "ingress"
  from_port                = 8080
  to_port                  = 8080
  protocol                 = "tcp"
  security_group_id        = module.payment.sg_id
}
