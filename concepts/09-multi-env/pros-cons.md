# tfvars Vs workspaces Vs Different repos
***Pros & cons*** 

# tfvars
PRO:    Same code 
CON:    Need to be very careful since a single code for multi env. Whatever changes in code will apply to all env including prod env 

# workspaces
PRO:    Same code
CON:    (1) Need to be very careful since a single code for multi env. Whatever changes in code will apply to all env including prod env 
        (2) terraform is maintained in same s3 bucket may cause errors difficult to maintain  

        (3) Difficult to maintain variables 

# Separate repos for different env
Good for large scale projects or applications

PRO: No need to worry about changes in code 
CONS: Code duplication