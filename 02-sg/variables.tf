variable "common_tags" {

  default = {
    Project     = "roboshop"
    Environment = "dev"
    Terraform   = "true"
  }
}

variable "sg_tags" {
  type    = map(any)
  default = {}
}

variable "environment" {
  type    = string
  default = "dev"

}

variable "project_name" {
  type    = string
  default = "roboshop"

}

variable "description" {
  type    = string
  default = ""

}

# variable "vpc_id" {
#     type=string
#     default = ""

# }


variable "mongodb_sg_ingress-rules" {
  default = [
    {
      description = "allow port 80"
      from_port   = 80
      to_port     = 80
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    },

    {
      description = "allow port 443"
      from_port   = 443
      to_port     = 443
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  ]
}


