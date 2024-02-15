# Provisioner ***provisioners are useful to integrate terraform with management tools like ansible*** 
two types
(1) local-exec
(2) remote-exec

Sub-topics:
    - Time Provisioners
        -- create: when = create
        -- destroy: when = destroy
    - Failure Behavior
        -- continue:  on_failure = continue
        -- fail: on_failure = fail

***local-exec Provisioner***
https://developer.hashicorp.com/terraform/language/resources/provisioners/local-exec

The local-exec provisioner invokes a local executable after a resource is created. This invokes a process on the machine running Terraform, not on the resource. 

local-exec run where we are running terraform command 
    --> if terraform command is ran in our computer then our system is local
    --> if terraform command is ran in ec2 instance than that instance is local 

***remote-exec Provisioner***
https://developer.hashicorp.com/terraform/language/resources/provisioners/remote-exec

The remote-exec provisioner invokes a script on a remote resource after it is created. This can be used to run a configuration management tool, bootstrap into a cluster, etc. 

\\remote-exec steps\\
need to connect server first 
then run commands inside the server 

# Time Provisioners
(A) Creation-Time Provisioners ***when = create***
(B) Destroy-Time Provisioners ***when = destroy***

creation time --> this will only run during creation time
-------------
destroy time --> this will only run during destroying time
-------------

# Failure Behavior
By default, provisioners that fail will also cause the Terraform apply itself to fail. The on_failure setting can be used to change this. The allowed values are:

***on_failure = continue***
    --> continue - Ignore the error and continue with creation or destruction.

***on_failure = fail***
    --> fail - Raise an error and stop applying (the default behavior). If this is a creation provisioner, taint the resource.