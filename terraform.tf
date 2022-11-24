terraform {
  cloud {
    organization = "sairanjitha"
    workspaces {
      name = "demo-terraform-cloud-gcp"
    }
  }
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }

  required_version = ">= 0.14.0"
}
