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

resource "github_repository" "sheetmusic" {
  name        = "sheetmusic"
  description = "Personal collection of sheet music engraved with LilyPond"
  has_issues  = true
  visibility  = "public"
}
