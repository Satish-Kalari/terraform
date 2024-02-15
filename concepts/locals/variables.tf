variable "isProd" {
  type = bool
  default = true
}

variable "ami_id" {
    type = string
    default = "ami-03265a0778a880afb"  
}

variable "zone_id" {
  type = string
  default = "Z052856235HX3UDODIJ0R"  
}

variable "domain_name" {
  type = string
  default = "projoy.store"  
}