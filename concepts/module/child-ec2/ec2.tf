module "child_ec2" {
    source = "../root-ec2"
    # if dont want to use root module instance_type, then we need to give our instance_type in child variable.tf
    # child variable will het prefernce over root variables   
    instance_type = var.instance_type  
}