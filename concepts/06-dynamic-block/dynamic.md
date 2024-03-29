*** Dynamic Blocks ***
https://developer.hashicorp.com/terraform/language/expressions/dynamic-blocks

***Dynamic block is for A particular block in side recourse is used multiple times*** 

Within top-level block constructs like resources, expressions can usually be used only when assigning a value to an argument using the name = expression form. This covers many uses, but some resource types include repeatable nested blocks in their arguments, which typically represent separate objects that are related to (or embedded within) the containing object:

A dynamic block acts much like a for expression, but produces nested blocks instead of a complex typed value. It iterates over a given complex value, and generates a nested block for each element of that complex value.

The label of the dynamic block ("setting" in the example above) specifies what kind of nested block to generate.
The for_each argument provides the complex value to iterate over.
The iterator argument (optional) sets the name of a temporary variable that represents the current element of the complex value. If omitted, the name of the variable defaults to the label of the dynamic block ("setting" in the example above).
The labels argument (optional) is a list of strings that specifies the block labels, in order, to use for each generated block. You can use the temporary iterator variable in this value.
The nested content block defines the body of each generated block. You can use the temporary iterator variable inside this block.
Since the for_each argument accepts any collection or structural value, you can use a for expression or splat expression to transform an existing collection.

The iterator object (setting in the example above) has two attributes:

key is the map key or list element index for the current element. If the for_each expression produces a set value then key is identical to value and should not be used.
value is the value of the current element.
A dynamic block can only generate arguments that belong to the resource type, data source, provider or provisioner being configured. It is not possible to generate meta-argument blocks such as lifecycle and provisioner blocks, since Terraform must process these before it is safe to evaluate expressions.

The for_each value must be a collection with one element per desired nested block. If you need to declare resource instances based on a nested data structure or combinations of elements from multiple data structures you can use Terraform expressions and functions to derive a suitable value. For some common examples of such situations, see the flatten and setproduct functions.

Multi-level Nested Bl