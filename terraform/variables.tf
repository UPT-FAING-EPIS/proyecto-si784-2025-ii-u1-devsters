variable "project_id" {
  description = "GCP project id (project where resources will be created)"
  type        = string
}

variable "region" {
  description = "Default region for Google provider"
  type        = string
  default     = "us-central1"
}

variable "firestore_location" {
  description = "Firestore location id (region or multi-region). E.g., 'us-central' or 'nam5'"
  type        = string
  default     = "us-central"
}

# Optionally you can provide a credentials file path, but do NOT commit credentials to the repo.
variable "credentials_file" {
  description = "(Optional) Path to a service account JSON key file. Prefer using GOOGLE_CREDENTIALS env var or ADC."
  type        = string
  default     = ""
}
