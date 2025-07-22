variable "project_id" {
  description = "The ID of the Google Cloud project where the Artifact Registry repository will be created."
  type        = string
  default = "commerce-app-demo"
}

variable "region" {
  description = "The Google Cloud region where the Artifact Registry repository will be created."
  type        = string
  default = "asia-southeast2"
}

variable "github_repos" {
    description = "List of GitHub repository names."
    type = list(string)
    default = [
        "order-service",
        "product-service",
        "user-service"
    ]
}

