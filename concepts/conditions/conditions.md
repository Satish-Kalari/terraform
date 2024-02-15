*** Conditional Expressions ***
https://developer.hashicorp.com/terraform/language/expressions/conditionals

condition ? true_val : false_val
    --> If condition is true then the result is true_val. If condition is false then the result is false_val.

var.a != "" ? var.a : "default-a"
    --> If var.a is an empty string then the result is "default-a", but otherwise it is the actual value of var.a.

instance_type = var.instance_type == "MongoDB" ? "t3.small" : "t2.micro"
    --> if instance in MongoDB then instance type is t3.small, otherwise instance type is t2.micro
