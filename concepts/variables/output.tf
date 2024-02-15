output "instance_info" {
    value = aws_instance.web
}

output "instance_type" {
  value = aws_instance.web.instance_type
}

