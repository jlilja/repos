module "repos" {
  source = "./modules/repository"

  name        = "repos"
  description = "Repository to manage my repositories via Terraform"

  visibility = local.PUBLIC
}

module "index-on-linux" {
  source = "./modules/repository"

  name        = "index-on-linux"
  description = "Notes on running Valve index VR kit on Linux"
}

module "infra" {
  source = "./modules/repository"

  name        = "infra"
  description = "Defines infrastructure for homelab and cloud resources"

  visibility = local.PUBLIC

  topics = [
    "ansible",
    "edgerouter",
    "kubernetes",
    "pihole",
    "terraform",
  ]

  issues = true
}

module "nix-home" {
  source = "./modules/repository"

  name        = "nix-home"
  description = "Manage my non-server linux machines via Nix's Home Manager"

  visibility = local.PUBLIC

  issues = true
}

# import {
#   id = "index-on-linux:main"
#   to = module.index-on-linux.github_branch_protection.repository_branch_protection
# }
