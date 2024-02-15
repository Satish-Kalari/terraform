variable "ami-id" {
  type = string
  default = "ami-03265a0778a880afb" #devops-practice id
}

variable "instance-type" {
  type = string
  default = "t2.micro"
}

variable "tags" {
  type = map
  default = {
    Name = "Hello Terraform"
    Project = "roboshop"
    Environment = "DEV"
    Component = "Web"
    Terraform = "true" # this indicated that this intace is created using terraform
  }
}

variable "sg-name" {
  type = string
  default = "roboshop-all-aws"  
}

variable "sg-description" {
    type = string
    default =  "Allow TLS inbound traffic"
}

variable "inbound-from-port" {
    type = number
    default =  0 # 0 meaans all ports
}

variable "cidr-blocks" {
  type = list
  default = ["0.0.0.0/0"]  
}