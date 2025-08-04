module "repos" {
  source = "./modules/repository"

  name        = "repos"
  description = "Repository to manage my repositories via Terraform"

  visibility = local.PUBLIC
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

module "bookie" {
  source = "./modules/repository"

  name        = "bookie"
  description = "Automating firefox bookmarks as code"

  visibility = local.PUBLIC

  topics = [
    "firefox",
    "firefox-addon",
  ]
}
