variable "environment" {
    type=string
    default = "dev"
  
}

variable "project_name" {
    type= string
    default = "roboshop"
  
}

variable "common_tags" {
    type = map
    default = {}
}

variable "zone_name" {
    type = string
    default = "nariops.online"
  
}