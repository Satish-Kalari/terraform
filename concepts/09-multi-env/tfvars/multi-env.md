*** Multiple environments with terraform provisioners ***

***To implement dev environment*** 

terraform init -backend-config=dev/backend.tf  <-- to work with dev env
terraform plan -var-file=dev/dev.tfvars
terraform apply -var-file=dev/dev.tfvars

***To implement prod environment*** 
if run dev environment first and run prod right after need to reconfigure

terraform init -reconfigure -backend-config=prod/backend.tf  <-- to work with prod env
terraform plan -var-file=prod/prod.tfvars
terraform apply -var-file=prod/prod.tfvars