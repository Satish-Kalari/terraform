# Naming conventions
https://www.terraform-best-practices.com/naming

\\ Use _ (underscore) instead of - (dash) everywhere (in resource names, data source names, variable names, outputs, etc).

\\ Prefer to use lowercase letters and numbers (even though UTF-8 is supported).

***Resource and data source arguments***

\\ Do not repeat resource type in resource name (not partially, nor completely):

Good: `resource "aws_route_table" "public" {}`
BAD: `resource "aws_route_table" "public_route_table" {}`
BAD: `resource "aws_route_table" "public_aws_route_table" {}`