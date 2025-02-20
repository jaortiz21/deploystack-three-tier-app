provider "google" {
  project = var.project_id
  region = var.region
  zone = var.zone

  credentials = var.gcp_creds
}

terraform {
  backend "gcs" {
    backend = var.state_bucket
    prefix = var.project_id
  }
}