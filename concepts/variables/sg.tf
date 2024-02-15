resource "aws_security_group" "roboshop-all" {#this is terraform name, for terraform reference only
  name        = var.sg-name # this is for aws
  description = var.sg-description
  #vpc_id      = aws_vpc.main.id

  ingress {
    description      = "Aloow All Ports"
    from_port        = var.inbound-from-port 
    to_port          = 0
    protocol         = "tcp"
    cidr_blocks      = var.cidr-blocks
   
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
   
  }

  tags = {
    Name = "roboshop-all-aws"
  }
}