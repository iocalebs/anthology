terraform {
  required_providers {
    github = {
      source  = "integrations/github",
      version = "~> 6.0"
    }
  }
}

provider "github" {
  owner = "iocalebs"
}

resource "github_repository" "anthology" {
  name        = "anthology"
  description = "Personal collection of music and poetry"
  has_issues  = true
  visibility  = "public"
}
