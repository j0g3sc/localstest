variable "suffix" {
  type = string
  default = ""
}

variable "secret_name" {
  type = string
  default = ""
}

locals {
  test = "%{ if var.suffix != "" }${var.secret_name}-${var.suffix}%{ else }${var.secret_name}%{ endif }"
  parameter_key_alias = "%{ if var.suffix != "" }alias/ssm-parameter-key-${var.suffix}%{ else }alias/ssm-parameter-key%{ endif }"
}

output "out" {
  value = local.test
}

output "out" {
  value = local.parameter_key_alias
}
