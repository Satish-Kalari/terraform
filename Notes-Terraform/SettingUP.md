*** SETTING UP TERRAFORM ***
(1) Download terraform
(2) Install AWS CLI
(3) Authentication between terraform and AWS
    (3.A) Create IAM admin user
    (3.B) Create access and secrete key
    (3.C) run aws configuration 

***Download terraform***

From https://developer.hashicorp.com/terraform/install#Windows
    -> unzip
    -> Place terraform.exe in software folder in c drive 
    -> to access terraform from GitBash
        --> give terraform path  
            -> open "edit the system environment variables"
                --> click on "environment variables"
                    -> under "system variables"
                        --> click "edit"
                            -> click "new"
                                --> place your terraform.exe location here
                                --> c:\software
                                --> click "ok"

***Downloading AWS CLI***

Download and Install AWS CLI for windows from https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html

***Authentication***

(3.A) Create IAM admin user
(3.B) Create access and secrete key
(3.C) run aws configuration 

Need to create a user in aws IAM to configure authentication between terraform and aws 

    Go to aws account and select IAM service
        -> select user form left menu
        -> click on "create user"
        -> give a name (ex. terraform) and click next
        -> select "attach policies directly"
            --> give administration access 
            -> next, -> create 

        -> on user main panel click on newly created user (i.e. terraform)
            --> select security credential tab  
                -> Click on "create access key"
                    --> in use case select command line interface (cli)
                    --> next
                    --> we will get Access key and Secret access key
                    --> save them    

    In GitBash
        aws configure  <-- run this command
            --> provide Access key and Secret access key that generated for a user terraform

*This will create .aws in C:\Users\Satish\ which contains credentials and config*

***Now terraform have access to aws to manages resources or services***