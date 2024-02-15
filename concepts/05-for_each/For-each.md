*** FOR EACH ***
https://developer.hashicorp.com/terraform/language/meta-arguments/for_each

Useful to iterate maps 

The each Object
---------------
In blocks where for_each is set, an additional each object is available in expressions, so you can modify the configuration of each instance. This object has two attributes:

--> each.key — The map key (or set member) corresponding to this instance.

--> each.value — The map value corresponding to this instance. (If a set was provided, this is the same as each.key.)

Limitations on values used in for_each
--------------------------------------
The keys of the map (or all the values in the case of a set of strings) must be known values, or you will get an error message that for_each has dependencies that cannot be determined before apply, and a -target may be needed.

for_each keys cannot be the result (or rely on the result of) of impure functions, including uuid, bcrypt, or timestamp, as their evaluation is deferred during the main evaluation step.

Sensitive values, such as sensitive input variables, sensitive outputs, or sensitive resource attributes, cannot be used as arguments to for_each. The value used in for_each is used to identify the resource instance and will always be disclosed in UI output, which is why sensitive values are not allowed. Attempts to use sensitive values as for_each arguments will result in an error.