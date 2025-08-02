resource "github_repository" "repository_name" {
  name        = var.name
  description = var.description
  topics      = var.topics
  visibility  = var.visibility

  delete_branch_on_merge = true
  has_issues             = var.issues
  vulnerability_alerts   = var.visibility == "public" ? true : false
}
