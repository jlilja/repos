resource "github_repository" "repository_name" {
  name        = var.name
  description = var.description
  topics      = var.topics
  visibility  = var.visibility

  delete_branch_on_merge = true
  has_issues             = var.issues
  vulnerability_alerts   = var.visibility == "public" ? true : false
}

resource "github_branch_protection" "repository_branch_protection" {
  # Branch protection rules are a Github pro or public repo feature. Shame.
  count = var.visibility == "public" ? 1 : 0

  repository_id = github_repository.repository_name.name

  pattern                = "main"
  enforce_admins         = true
  allows_deletions       = false
  allows_force_pushes    = false
  require_signed_commits = true

  required_pull_request_reviews {
    dismiss_stale_reviews           = true
    restrict_dismissals             = true
    required_approving_review_count = 0
  }
}
