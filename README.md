# Meta Terraform Module

A simple utility module to encapsulate creation of simple meta data to add to resources.

## Variables

| Name          |
|---------------|
| name          |
| environment   |
| organisation  |
| domain_suffix |
| tags          |

## Outputs

| Name        |
|-------------|
| name_suffix |
| domain      |
| tags        |


Following a DNS style of naming the outputs are created as follows

*   _name_suffix_ is name.environment.organisation
*   _domain_ is name.environment.organisation.domain_suffix
*   _tags_ consist of all input tags plus Environment and Organisation as passed in plus Domain as the value of the 
output _domain_ and Name as the value of the output _name_suffix_

Given the following input

```hcl
name: "simple"
environment: "examples"
organisation: "japeoh"
domain_suffix: "internal"
tags: {
  CostCentre: "A123",
}
```

The module will return the following output

```hcl
name_suffix: "simple.examples.japeoh"
domain: "simple.examples.japeoh.internal"
tags: {
  Name: "simple.examples.japeoh",
  Domain: "simple.examples.japeoh.internal",
  Environment: "examples",
  Organistation: "japeoh",
  CostCentre: "A123",
}
```
