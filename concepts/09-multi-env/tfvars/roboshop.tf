resource "aws_instance" "web" {
  for_each = var.instance_name
  ami           = data.aws_ami.centos8.id  
  instance_type = each.value
  tags = {
  Name = each.key
  }
}

resource "aws_route53_record" "www" {
  for_each = aws_instance.web
  zone_id = var.zone_id
  name    = "${each.key}.${var.domain_name}" #interpolation
  type    = "A"
  ttl     = 1
  # records = [aws_instance.web[count.index].private_ip]
  # records = [each.key == "web" ? each.value.public_ip : each.value.private_ip]
  records = [startswith(each.key, "web") ? each.value.public_ip : each.value.private_ip]  
}

# Since we are using tfvars for dev and prod now my instance names would be web-dev or web-prod as given in /dev/dev.tfvars and /prod/prod.tfvars 

# startswith function 
#     when instance name is web-dev or web-prod
#     since each instance starts with web then it will create public ip  

# terraform init -backend-config=dev/backend.tf  <-- to work with dev env
# terraform plan -var-file=dev/dev.tfvars
# terraform apply -var-file=dev/dev.tfvars