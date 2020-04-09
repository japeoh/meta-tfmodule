locals {
  name_suffix = format("%s.%s.%s", var.name, var.environment, var.organisation)
  domain      = format("%s.%s", local.name_suffix, var.domain_suffix)

  tags = merge(var.tags,
    map(
      "Name", local.name_suffix,
      "Domain", local.domain,
      "Environment", var.environment,
      "Organisation", var.organisation,
    )
  )
}
