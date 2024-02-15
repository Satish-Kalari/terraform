# lookup Function
https://developer.hashicorp.com/terraform/language/functions/lookup

lookup retrieves the value of a single element from a map, given its key. If the given key does not exist, the given default value is returned instead.

lookup(map, key, default)

--->instance_type = lookup(var.instance_type, terraform.workspace)<--

Here lookup will go to variable for instance type
    --> if we are in dev workspace it will create t2.micro ec2  
    --> if we are in prod workspace it will create t3.small ec2 
    --> here terraform.workspace will point env we are in 

variable "instance_type" {
    default = {
        dev = "t2.micro"
        prod = "t3.small"
    }  
}

when run terraform apply in workspace, it will provide as a default terraform.workspace variable 
    terraform.workspace --> dev when we are in dev env
    terraform.workspace --> prod when we are in prod env
