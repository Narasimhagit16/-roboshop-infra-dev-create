variable "environment" {
    type=string
    default = "dev"
  
}

variable "project_name" {
    type= string
    default = "roboshop"
  
}

variable "tags" {
    default = {
        component= "payment"
    }
  
}

variable "common_tags" {
  default = {
    Project     = "roboshop"
    Environment = "dev"
    Terraform   = "true"
  }
}

variable "zone_name" {
    type = string
    default = "nariops.online"
  
}

# variable "vpc_id" {
  
# }

# variable "ami_id" {
  
# }

# variable "instance_type" {
  
# }

# variable "app-name_sg_id" {
  
# }


