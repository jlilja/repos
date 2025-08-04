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
