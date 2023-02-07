terraform {
  required_providers {
    helm = {
      source = "hashicorp/helm"
      version = "2.8.0"
    }
  }

  backend "gcs" {
    bucket  = "helm-release-tfstate"
    prefix  = "terraform/state"
  }
}

provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}