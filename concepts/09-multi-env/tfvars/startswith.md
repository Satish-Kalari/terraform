# startswith() function 

startswith takes two values: a string to check and a prefix string. The function returns true if the string begins with that exact prefix.

https://developer.hashicorp.com/terraform/language/functions/startswith

Since we are using tfvars for dev and prod now my instance names would be web-dev or web-prod as given in /dev/dev.tfvars and /prod/prod.tfvars 

startswith function 
    when instance name is web-dev or web-prod
    since each instance starts with web then it will create public ip  