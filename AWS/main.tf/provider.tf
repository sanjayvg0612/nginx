resource "github_repository" "demo_repo" {
  name        = "demo_12"
  description = "My awesome codebase"

  visibility = "public"
}

resource "github_branch" "dev" {
  repository = github_repository.demo_repo.name
  branch     = "dev"
}

resource "github_branch_default" "default"{
  repository = github_repository.demo_repo.name
  branch     = github_branch.dev.branch
}