resource "google_artifact_registry_repository" "repos" {
  for_each = toset(var.github_repos)
  repository_id = each.key
  location = var.region
  format = "DOCKER"
}