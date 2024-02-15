https://developer.hashicorp.com/terraform/language/values/locals

Locals are same as variables with extra capabilities
LOCALS CAN KEEP FUNCTIONS AND EXPRESSIONS IN SIDE LOCALS 

A local value assigns a name to an expression, so you can use the name multiple times within a module instead of repeating the expression.

If you're familiar with traditional programming languages, it can be useful to compare Terraform modules to function definitions:

Input variables are like function arguments.
Output values are like function return values.
Local values are like a function's temporary local variables.