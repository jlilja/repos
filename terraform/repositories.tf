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

module "mr-robot-generator" {
  source = "./modules/repository"

  name        = "Mr_robot_generator"
  description = "Bash script to generate made up episode names for the show Mr Robot"

  visibility = local.PUBLIC

  topics = [
    "bash",
    "generator",
    "grep",
    "json",
    "mr",
    "mrrobot",
    "robot",
    "sed",
  ]
}

module "booli-php-wrapper" {
  source = "./modules/repository"

  name        = "Booli-php-wrapper"
  description = "A lightweight API wrapper for the Booli API written in PHP."

  visibility = local.PUBLIC

  topics = [
    "api",
    "booli",
    "php",
    "wrapper",
  ]
}

module "guess-the-number" {
  source = "./modules/repository"

  name        = "Guess-the-number"
  description = "Simple Erlang script where you try to figure out a random number using binary search"

  visibility = local.PUBLIC
}

module "biblioteksinfo" {
  source = "./modules/repository"

  name = "biblioteksinfo"

  visibility = local.PUBLIC
}
