terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.51.0"
    }
  }
}

provider "google" {
  project = "m7shekhawat"  # update based on your project name in GCP
  region  = "asia-east1" # update location based on your preference
}