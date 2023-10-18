resource "random_pet" "environment" {
    prefix = var.environment
    length = 3
}

resource "random_integer" "priority" {
  min = 1
  max = 50000
}

resource "random_string" "random" {
  length           = 16
  special          = true
  override_special = "/@£$"
}
