terraform {
  required_providers {
    helm = {
      source  = "hashicorp/helm"
      version = "2.8.0"
    }

    kubernetes = {
      source = "hashicorp/kubernetes"
      version = "2.17.0"
    }
  }

  backend "gcs" {
    bucket = "helm-release-tfstate"
    prefix = "terraform/state"
  }
}

provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}

provider "kubernetes" {
  config_path    = "~/.kube/config"
  config_context = "gke_m7shekhawat_asia-east1_my-cluster" # update to your config context
}