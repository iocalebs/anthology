terraform {
  backend "local" {
    path = ".terraform.tfstate"
  }
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
  name         = "anthology"
  description  = "Personal collection of music and poetry"
  homepage_url = "https://iocalebs.github.io/anthology/anthology.pdf"
  has_issues   = true
  visibility   = "public"
}

resource "github_repository_pages" "anthology" {
  repository = github_repository.anthology.name
  build_type = "workflow"
}
