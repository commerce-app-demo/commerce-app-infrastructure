output "repository_urls" {
  description = "Map of repository names to their URLs."
  value = {
    for repo_name, repo in google_artifact_registry_repository.repos :
    repo_name => "${var.region}-docker.pkg.dev/${var.project_id}/${repo.repository_id}"
  }
}

output "repository_names" {
  description = "Map of repository names to their full names."
  value = {
    for repo_name, repo in google_artifact_registry_repository.repos :
    repo_name => repo.name
  }
}