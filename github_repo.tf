terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 5.0"
    }
  }
}

provider "github" {
  token = "${GITHUB_TOKEN}"
}

resource "github_repository" "learning-terraform" {
  name         = "learning-terraform"
  description  = "learning terraform to do automation as Security Enginner"
}
