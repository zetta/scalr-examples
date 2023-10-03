locals {
  env_vars = read_terragrunt_config("env.hcl")
}

generate "backend" {
  path      = "backend.tf"
  if_exists = "overwrite_terragrunt"
  contents = <<EOF
terraform {
  backend "remote" {
    hostname     = "zetta.scalr.io"
    organization = "terragrunt"

    workspaces {
      name = "terragrunt_${local.env_vars.locals.env}"
    }
  }
}
EOF
}
