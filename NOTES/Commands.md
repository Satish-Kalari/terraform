*** Terraform commands *** 

https://spacelift.io/blog/terraform-commands-cheat-sheet

*** .tfvars commands ***
-> terraform plan -var="instance_type=t2.micro" <-- command to give or override default vales in variable.tf file for instance type in command line

-> terraform plan -var-file="xyz.tfvars" <-- takes variables from file with name xyz.tfvars

*** Get Help *** 
terraform -help: Displays a list of available commands with descriptions. Use this to explore Terraform’s command-line options.

*** Show Your Terraform Version: *** 
terraform version: Shows the current Terraform version installed. It also notifies you if a newer version is available for download.

*** Format Your Terraform Code: *** 
terraform fmt: Formats your Terraform configuration files using the HashiCorp Configuration Language (HCL) standard. Ensures consistent code style and readability.
terraform fmt --recursive: Formats files in subdirectories.
terraform fmt --diff: Displays differences between original configuration files and formatting changes.
terraform fmt --check: Useful in CI/CD pipelines to ensure correct formatting; exit status is non-zero if formatting is needed.

*** Initialize Your Directory: *** 
terraform init: Initializes your working directory by downloading necessary plugins and modules. Run this before any other Terraform command.

*** Download and Install Modules: *** 
terraform get: Downloads and installs modules specified in your configuration.

*** Validate Your Terraform Code *** 
terraform validate: Checks your configuration files for syntax errors and validates them against Terraform rules.

***  Plan Your Infrastructure: *** 
terraform plan: Generates an execution plan showing what changes Terraform will make to your infrastructure. Helps you review before applying changes.

***  Deploy Your Infrastructure: *** 
terraform apply: Applies the changes defined in your configuration. Creates or modifies resources as needed.
terraform apply -auto-approve: Applies changes without manual confirmation.

*** Destroy Your Infrastructure *** 
terraform destroy: Destroys all resources created by Terraform. Use with caution!

*** ‘Taint’ or ‘Untaint’ Resources: *** 
terraform taint <resource_name>: Marks a resource for recreation during the next apply.
terraform untaint <resource_name>: Removes the taint mark from a resource.

*** Refresh the State File: *** 
terraform refresh: Updates the Terraform state file with the current state of your infrastructure.

*** View and Manipulate State File:*** 
terraform state list: Lists resources in the state file.
terraform state show <resource_name>: Displays details of a specific resource.
terraform state mv: Moves a resource within the state file.

*** Import Existing Infrastructure: *** 
terraform import <resource_type>.<resource_name> <resource_id>: Imports existing infrastructure into your Terraform state.

*** Manage Workspaces: *** 
terraform workspace list: Lists available workspaces. Also * next to workspace we are in
terraform workspace select <workspace_name>: Switches to a different workspace.
terraform workspace new <workspace_name>: Creates a new workspace.
terraform workspace show: To know which workspace we are in

*** View Outputs: *** 
terraform output: Displays output values defined in your configuration.

*** Release a Lock on Your Workspace: *** 
terraform force-unlock <lock_id>: Releases a lock on a workspace.

*** Log In and Out to a Remote Host (Terraform Cloud): *** 
terraform login: Logs in to Terraform Cloud.
terraform logout: Logs out from Terraform Cloud.

*** Produce a Dependency Diagram: *** 
terraform graph: Generates a visual representation of resource dependencies.

*** Test Your Expressions: *** 
terraform console: Opens an interactive console to evaluate expressions.

*** Switch Working Directory: *** 
terraform cd <directory>: Changes the working directory.

Shell Tab-Completion:
Enable shell tab-completion for Terraform commands.
