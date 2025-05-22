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
}

output "out" {
  value = local.test
}
