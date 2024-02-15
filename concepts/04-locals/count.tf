# resource "aws_instance" "web" {
#   #count = 11  # count.index is a special variable given by terraform 
#   count = length(var.instance_name)
#   ami           = var.ami_id 
#   instance_type = local.instance_type
#   tags = {
#     Name = var.instance_name[count.index]
#     }
#   }

# resource "aws_route53_record" "www" {
#  #count = 11
#  count = length(var.instance_name)
#   zone_id = var.zone_id
#   name    = "${var.instance_name[count.index]}.${var.domain_name}" #interpolation
#   type    = "A"
#   ttl     = 1
#   #records = [aws_instance.web[count.index].private_ip]
#   records = [local.ip]
# }

resource "aws_instance" "web" {
  ami           = var.ami_id 
  instance_type = local.instance_type
  tags = {
    Name = "locals"
    }
  }