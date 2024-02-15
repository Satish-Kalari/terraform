*** The count Meta-Argument ***
https://developer.hashicorp.com/terraform/language/meta-arguments/count

Note: A given resource or module block cannot use both count and for_each.

Useful to iterate list 

The count meta-argument accepts a whole number, and creates that many instances of the resource or module. Each instance has a distinct infrastructure object associated with it, and each is separately created, updated, or destroyed when the configuration is applied.

The count Object
In blocks where count is set, an additional count object is available in expressions, so you can modify the configuration of each instance. This object has one attribute:

count.index — The distinct index number (starting with 0) corresponding to this instance.