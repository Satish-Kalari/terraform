# Workspaces
https://developer.hashicorp.com/terraform/language/state/workspaces

terraform workspace list <-- to see list of workspaces

***workspaces are to manage multiple env with single code*** 

when run terraform apply in workspace, it will provide as a default terraform.workspace variable 
    terraform.workspace --> dev when we are in dev env
    terraform.workspace --> prod when we are in prod env

Terraform starts with a single, default workspace named default that you cannot delete. If you have not created a new workspace, you are using the default workspace in your Terraform working directory.

When you run terraform plan in a new workspace, Terraform does not access existing resources in other workspaces. These resources still physically exist, but you must switch workspaces to manage them.

*** Manage Workspaces: *** 
terraform workspace list: Lists available workspaces. Also * next to workspace we are in
terraform workspace select <workspace_name>: Switches to a different workspace.
terraform workspace new <workspace_name>: Creates a new workspace.
terraform workspace show: To know which workspace we are in