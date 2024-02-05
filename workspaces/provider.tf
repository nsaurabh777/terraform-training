provider "google" {
  project     = "cool-discipline-186213"
  region      = "us-central1"
  zone        = "us-central1-a"
  credentials = file("/Users/saurabhnair/Documents/personal/projects/terraform/training/terraform-cool-discipline-186213-884c8d890250.json")
}