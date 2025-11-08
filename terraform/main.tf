terraform {
  required_version = ">= 1.0"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.75"
    }
  }
  backend "gcs" {
    # Se configurará vía -backend-config en CI
  }
}

provider "google" {
  # Use variables so the configuration is reusable and doesn't store secrets in the repo.
  # Authentication should be provided via one of the supported methods:
  #  - Set the environment variable GOOGLE_CREDENTIALS with the JSON contents of a service account key,
  #  - Or run `gcloud auth application-default login` and rely on ADC,
  #  - Or set a credentials file and use `credentials = file("/path/to/key.json")` here (not recommended in repo).
  project = var.project_id
  region  = var.region
}

resource "google_firestore_database" "default" {
  name        = "(default)"
  # Confirm the correct Firestore location for your project. Common values: "us-central" or a multi-region like "nam5".
  # If you're unsure, check the GCP Console or use the gcloud CLI to list supported locations.
  location_id = var.firestore_location
  type        = "FIRESTORE_NATIVE"
}