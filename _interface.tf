variable name {}

variable environment {}

variable organisation {}

variable domain_suffix {
  default = "internal"
}

variable tags {
  type    = map(string)
  default = {}
}

output name_suffix {
  value = local.name_suffix
}

output domain {
  value = local.domain
}

output tags {
  value = local.tags
}