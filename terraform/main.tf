terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 7.3"
    }
  }
}

provider "google" {
  project = "sistema-voluntariado-upt"
  region  = "us-central1"
}

resource "google_firestore_database" "default" {
  name        = "(default)"
  location_id = "nam5" # us-central
  type        = "FIRESTORE_NATIVE"
}