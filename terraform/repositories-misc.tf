module "index-on-linux" {
  source = "./modules/repository"

  name        = "index-on-linux"
  description = "Notes on running Valve index VR kit on Linux"
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
