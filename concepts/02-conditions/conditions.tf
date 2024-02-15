resource "aws_instance" "web" {
  ami           = var.ami_id 
  instance_type = var.instance_type == "MongoDB" ? "t3.small" : "t2.micro"
  
}