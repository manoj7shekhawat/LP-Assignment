terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.51.0"
    }
    helm = {
      source = "hashicorp/helm"
      version = "2.8.0"
    }
  }
}

provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}

provider "google" {
  project     = "m7shekhawat"
  region      = "asia-east1"
}