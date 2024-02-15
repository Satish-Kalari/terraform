resource "aws_instance" "web" {
  ami           = "ami-03265a0778a880afb" #devops-practice id
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.roboshop-all.id]

  tags = {
    Name = "provisioner"
  }
  # this will only run during creation time 
  provisioner "local-exec" {
    command = "echo This will exicute at the time of creation, you can trigger other system like email and sending alerts"
    when = create
  }

  provisioner "local-exec" {
    command = "echo The server's IP address is ${self.private_ip}" # self = aws_instance.web
  }

#   provisioner "local-exec" {
#     command = "ansible-playbook -i inventory web.yaml"
#   }

  # This will run only during destroy
  provisioner "local-exec" {
    command = "echo This will exicute at the time of destroy, you can trigger other system like email and sending alerts"
    when = destroy
  }

  # this connection is needed for remote-exec (with out connection remote-exec cant run)
  connection {
    type = "ssh"
    user = "centos"
    password = "DevOps321"
    host = self.public_ip
  }

  provisioner "remote-exec" {
    inline = [ 
        "echo 'this is from remote exec' > /tmp/remote.txt",
        "sudo yum install nginx -y",
        "sudo systemctl start nginx"
     ]
  }
}
# security group is needed remote-exec to connect via ssh for provision  
resource "aws_security_group" "roboshop-all" { #this is terraform name, for terraform reference only
    name        = "provisioner"
    # port 22 is for ssh connection
    ingress {
        description      = "Allow ports 22"
        from_port        = 22
        to_port          = 22 
        protocol         = "tcp"
        cidr_blocks      = ["0.0.0.0/0"]
        
    }
    # port 80 to check if nginx is inatlled with remote-exec
    ingress {
        description      = "Allow port 80"
        from_port        = 80
        to_port          = 80 
        protocol         = "tcp"
        cidr_blocks      = ["0.0.0.0/0"]
        
    }

    egress {
        from_port        = 0
        to_port          = 0
        protocol         = "-1"
        cidr_blocks      = ["0.0.0.0/0"]
        
    }

    tags = {
        Name = "provisioner"
    }
}

