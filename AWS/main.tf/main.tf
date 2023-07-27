terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 5.0"
    }
  }
}

# Configure the GitHub Provider
provider "github" {
    token = "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"
}

