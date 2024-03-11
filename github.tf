terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 6.0"
    }
  }
}

# Configure the GitHub Provider
provider "github" {
	token = "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"
}

resource "github_repository" "terraform-repository" {
  name        = "respository-from-terraform"
  description = "My awesome codebase"
  visibility = "public"
}