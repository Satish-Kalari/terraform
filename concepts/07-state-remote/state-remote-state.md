*** Terraform state and remote state ***

***Terraform state***
what ever we write it should create  <-- this id declarative, 

Declarative = desired state

Current state saves in terraform.tfstate file

Ultimate role of terraform is 
Desired state == current state 

terraform will check current state when run command terraform apply: 
    --> when current state is = to desire state it will not take any actions 

    --> when current state is != to desire state then terraform either crete, change or destroy based on desire state request

***tflock***
when we run terraform apply and while creating any resource it will lock terraform.state files as terraform.tfstate.lock.info  so that no on can make any changes in it. 

***terraform remote-state***
terraform.state file should not be in local location 
    it may lead to creating duplicates and errors 

Advantages for remote-state:
----------------------------
    ***Collaborations***
    --> multiple engineries work on the same project should use same terraform.state to maintain desired state
    ***Security***
    --> In cloud terraform.state safe from accidental deletion or loosing in system crashes 

\\ s3 bucket \\

s3 bucket is a aws service which can be used as remote location for terraform.state file 

---->check s3.bucket.md for details<----