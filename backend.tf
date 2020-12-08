terraform {
  required_version = ">= 0.12"
  backend "gcs" {
    bucket = "terraform-state-bucket-default"
  }
}