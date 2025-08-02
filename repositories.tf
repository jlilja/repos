module "repos" {
  source = "./modules/repository"

  name        = "repos"
  description = "Repository to manage my repositories via Terraform"
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
  description = ""

  visibility = local.PUBLIC

  issues = true
}

import {
  id = "nix-home"
  to = module.nix-home.github_repository.repository_name
}
