provider "google" {
  project     = "cool-discipline-186213"
  region      = "us-west1"
  zone        = "us-west1-b"
  credentials = file("/Users/saurabhnair/Documents/personal/projects/terraform/training/terraform-cool-discipline-186213-884c8d890250.json")
}