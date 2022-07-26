terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "netology-graduate"

    workspaces {
      prefix = "netology-"
    }
  }
}
