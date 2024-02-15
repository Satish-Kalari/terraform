# Modules
https://developer.hashicorp.com/terraform/language/modules

Modules are containers for multiple resources that are used together. A module consists of a collection of .tf and/or .tf.json files kept together in a directory.

\\The Root Module [module-developer] [no-need-for-provider.tf]
Every Terraform configuration has at least one module, known as its root module, which consists of the resources defined in the .tf files in the main working directory.

\\Child Modules [module-user] [should-have-provider.tf]
A Terraform module (usually the root module of a configuration) can call other modules to include their resources into the configuration. A module that has been called by another module is often referred to as a child module.

Child modules can be called multiple times within the same configuration, and multiple configurations can use the same child module.

\\Published Modules
In addition to modules from the local filesystem, Terraform can load modules from a public or private registry. This makes it possible to publish modules for others to use, and to use modules that others have published.

Published Modules: two types 
 - customized modules (our own or our company created)
 - open source modules (created by others)