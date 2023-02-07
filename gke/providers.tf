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
  project = "m7shekhawat" # update based on your project name in GCP
  region  = "asia-east1" # update location based on your preference
}