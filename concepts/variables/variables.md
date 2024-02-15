*** Variable preference order *** 
https://developer.hashicorp.com/terraform/language/values/variables

(1) command line
(2) -var-files
(3) xyz.tfvars
(4) ENV variables 
(5) prompt for value <-- if none above>

variables given in file with .tfvars extension will override default values given in variables.tf

terraform plan -var="instance_type=t2.micro" <-- command to give or override default vales in variable.tf file for instance type in command line

terraform plan -var-file="xyz.tfvars" <-- takes variables from file with name xyz.tfvars