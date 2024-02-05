provider "google" {
  project     = "cool-discipline-186213"
  region      = "us-weest1"
  zone        = "us-west1-b"
  credentials = file("/Users/saurabhnair/Documents/personal/projects/terraform/training/terraform-cool-discipline-186213-884c8d890250.json")
}

resource "google_storage_bucket" "static" {
  name          = "terraform-training-bucket-02"
  location      = "US"
  storage_class = "COLDLINE"
}

# Create a text object in Cloud Storage
resource "google_storage_bucket_object" "default" {
  name         = "new-object"
  content      = "Hello World"
  content_type = "text/plain"
  bucket       = google_storage_bucket.static.id
}

# Get bucket metadata
data "google_storage_bucket" "default" {
  name = google_storage_bucket.static.id
}

output "bucket_metadata" {
  value = data.google_storage_bucket.default
}