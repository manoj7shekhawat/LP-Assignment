terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.51.0"
    }
  }

  backend "gcs" {
    bucket = "gke-backend-tfstate"
    prefix = "terraform/state"
  }
}

provider "google" {
  project = "m7shekhawat"
  region  = "asia-east1"
}