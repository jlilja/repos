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

import {
  id = "index-on-linux"
  to = module.index-on-linux.github_repository.repository_name
}
