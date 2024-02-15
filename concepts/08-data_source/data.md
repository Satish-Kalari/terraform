*** Data Sources ***
https://developer.hashicorp.com/terraform/language/data-sources

Data sources allow Terraform to use information defined outside of Terraform, defined by another separate Terraform configuration, or modified by functions.

For example every time there is improvement in AMI id will change , so har coding AMI ID will fail when there is update. To avoid this we can use data source with owner id and name we can get new AMI ID automatically 