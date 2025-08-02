resource "github_repository" "repository_name" {
  name        = var.name
  description = var.description

  visibility = var.visibility
}
