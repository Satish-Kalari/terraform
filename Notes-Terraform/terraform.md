TERRAFORM:
------------

Ansible: configuration as a code (CaC)
--------
	--> configuration management

Terraform: infrastructure as code (IaC)
----------
    --> Declarative way of creating infra
        -> what evr we write, terraform will create provide correct syntax
        -> easy syntax, no need to follow sequence    
    --> Consistent infrastructure 
        -> Across all environments  
    --> Automatic infrastructure (CRUD)
        -> create
        -> read
        -> update
        -> delete
    --> Inventory management
    --> Cost optimization
        -> create when required
        -> stop or delete when not required
    --> Automatic dependency management
        -> we create resources and terraform will take care of dependency management
    --> Modules
        -> create terraform as module, other project can use it without writing from scratch 
    --> Cloud-agnostic tool 
        -> can work with any tool as long as provider available 
        -> AWS, Azure, GCP, GitHub etc..
    
*** USING TERRAFORM ***
terraform requires AWS provider configuration 
    -> https://registry.terraform.io/providers/hashicorp/aws/latest/docs

***NEED TO HAVE provider.tf for terraform to run***

*** Data-Types ***
Map = {}
List = []
String = test
Bool = true false
Number = numerical 