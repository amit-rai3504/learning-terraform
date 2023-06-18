terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 5.0"
    }
  }
}

provider "github" {
  token = "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"
}

resource "github_repository" "learning-terraform" {
  name         = "learning-terraform"
  description  = "learning terraform to do automation as Security Enginner"
}